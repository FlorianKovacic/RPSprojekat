<template>
	<div>
		<div v-if="loggedIn">
			<div v-if="!submitting && !loggedInAsAdmin">
				Access denied!
			</div>
			<div v-else>
				<div v-if="!submitting && !songFound">
					<h1>Not found</h1>
				</div>
				<div v-else>
					<form v-on:submit.prevent="submit()">
						<div class="form-group mt-2 mb-5">
							<fieldset class="border">
								<div class="form-group mb-5">
									<legend>General</legend>
								</div>
								<div class="form-group mb-3">
									<label for="title">Title:</label>
									<input id="title" v-model="title" placeholder="title" required/>
								</div>
								<div class="form-group mb-3">
									<div class="mb-1">
										<label for="lyrics">Lyrics:</label>
									</div>
									<textarea id="lyrics" v-model="lyrics" placeholder="lyrics" rows="30" cols="80" required/>
								</div>
								<div class="form-group mb-3">
									<span class="mr-3">Language:</span>
									<input type="radio" id="serbian" value="Serbian" v-model="language"/>
									<label for="serbian">Serbian</label>
									<input type="radio" id="english" value="English" v-model="language"/>
									<label for="english">English</label>
									<input type="radio" id="other" value="Other" v-model="language"/>
									<label for="other">Other</label>
								</div>
								<div class="form-group mb-1">
									<label for="performer">Performer:</label>
									<select id="performer" v-model="performer" required>
										<option v-bind:value="-1">Unknown</option>
										<option v-for="performer in performers" v-bind:key="performer.id" v-bind:value="performer.id">{{performer.name}}</option>
									</select>
								</div>
								<div class="form-group mb-3">
									<label for="album">Album:</label>
									<select id="album" v-model="album" required>
										<option v-bind:value="-1">Unknown</option>
										<option v-for="album in albums" v-bind:key="album.id" v-bind:value="album.id">{{album.title}}</option>
									</select>
								</div>
							</fieldset>
						</div>
						<div class="form-group mb-5">
							<fieldset class="border">
								<div class="form-group mb-5">
									<legend>Authors of the music and lyrics</legend>
								</div>
								<div class="form-group mb-3">
									<label for="author">Select author:</label>
									<select v-model="author">
										<option v-for="author in authors" v-bind:key="author.id" v-bind:value="author">{{author.name}}</option>
									</select>
								</div>
								<div class="form-group mb-2">
									<button class="btn-light" type="button" v-on:click="addMusic">Add author to composers</button>
								</div>
								<div class="form-group mb-3">
									<button class="btn-light" type="button" v-on:click="addLyrics">Add author to lyrics writers</button>
								</div>
								<div class="row">
									<div class="col">
										<div class="form-group mb-4">Composers:</div>
										<div class="form-group mb-3">
											<table id="musicTable" class="table table-borderless">
												<tbody><tr is="selectableRow" v-for="music in selectedMusic" v-bind:key="music.id" ><div slot="content">{{music.name}}</div></tr></tbody>
											</table>
										</div>
										<div class="form-group mb-3">
											<button class="btn-secondary" type="button" v-on:click="removeSelected('musicTable', selectedMusic)">Remove selected composers</button>
										</div>
									</div>
									<div class="col">
										<div class="form-group mb-4">Lyrics writers:</div>
										<div class="form-group mb-3">
											<table id="lyricsTable" class="table table-borderless">
												<tbody><tr is="selectableRow" v-for="lyrics in selectedLyrics" v-bind:key="lyrics.id" ><div slot="content">{{lyrics.name}}</div></tr></tbody>
											</table>
										</div>
										<div class="form-group mb-3">
											<button class="btn-secondary" type="button" v-on:click="removeSelected('lyricsTable', selectedLyrics)">Remove selected lyrics writers</button>
										</div>
									</div>
								</div>
							</fieldset>
						</div>
						<div class="form-group mb-3">
							<button class="btn-primary" type="submit">{{submitting ? 'Submit this song' : 'Approve of this song'}}</button>
						</div>
						<div class="form-group mb-3">
							<button class="btn-danger" v-if="!submitting" type="button" v-on:click="revert()">Revert changes</button>
						</div>
						<div v-if="success" class="alert alert-success">{{submitting ? 'Song successfully submitted!' : 'Song approved of!'}}</div>
						<div v-if="failure" class="alert alert-danger">{{submitting ? 'Unauthorized access! You need to log in to perform this action.' : 'Access denied!'}}</div>
					</form>
				</div>
			</div>
		</div>
		<div class="jumbotron mt-2" v-else>
			You need to log in to submit a song!
		</div>
	</div>
</template>

<script>

import Vue from 'vue'
import selectableRow from './SelectableTableRow.vue'
import urls from './../urls.js'

export default {
		name: 'addSong',
		props: {
			id: {
				default: null
			}
		},
		components: {
			selectableRow
		},
		data: function() {
			return {
				songToBeApproved: null,
				title: '',
				lyrics: '',
				language: 'English',
				performer: -1,
				performers: [],
				album: -1,
				albums: [],
				selectedMusic: [],
				selectedLyrics: [],
				author: null,
				authors: [],
				success: false,
				failure: false,
				requestBase: urls.requestBase,
				songFound: false
			}
		},
		computed: {
			loggedIn() {
				return this.$store.getters.loggedIn;
			},
			loggedInAsAdmin() {
				return this.$store.getters.loggedInAsAdmin;
			},
			username() {
				return this.$store.state.username;
			},
			submitting() {
				return this.$route.name === 'submit';
			}
		},
		methods: {
			gatherData: function() {
				return {
					"title": this.title,
					"lyrics": this.lyrics,
					"language": this.language,
					"performer": {
						"id": this.performer
					},
					"album": {
						"id": this.album
					},
					"uploader": {
						"username": this.username
					},
					"musicBy": this.selectedMusic,
					"lyricsBy": this.selectedLyrics
				}
			},
			add: function() {
				Vue.http.post(this.requestBase + '/song', this.gatherData()).then(
					() => {
						this.success = true;
						this.failure = false;
					},
					() => {
						this.failure = true;
						this.success = false;
					}
				);
			},
			getPerformers: function() {
				Vue.http.get(this.requestBase + '/performer').then(
					response => {
						this.performers = response.body;
					}
				);
			},
			getAlbums: function() {
				Vue.http.get(this.requestBase + '/album').then(
					response => {
						this.albums = response.body;
					}
				);
			},
			getAuthors: function() {
				Vue.http.get(this.requestBase + '/author').then(
					response => {
						this.authors = response.body;
					}
				);
			},
			addMusic: function() {
				if(this.author) {
					this.addToSet(this.author, this.selectedMusic);
				}
			},
			addLyrics: function() {
				if(this.author) {
					this.addToSet(this.author, this.selectedLyrics);
				}
			},
			addToSet: function(elem, set) {
				if(!set.some(e => e.id === elem.id)) {
					set.push(elem);
				}
			},
			removeIfSelected(row, array) {
				if(row.__vue__.selected) {
					var name = row.firstChild.firstChild.innerHTML;
					var index = -1;
					for(var i = 0; i < array.length; i++) {
						if(array[i].name === name) {
							index = i;
							break;
						}
					}
					array.splice(index, 1);
				}
			},
			removeSelected: function(id, array) {
				var table = document.getElementById(id);
				var tbody = table.firstChild;
				var rows = tbody.childNodes;
				rows.forEach(row => this.removeIfSelected(row, array));
			},
			fillIn: function() {
				this.title = this.songToBeApproved.title;
				this.lyrics = this.songToBeApproved.lyrics;
				this.language = this.songToBeApproved.language;
				this.performer = this.songToBeApproved.performer ? this.songToBeApproved.performer.id : -1;
				this.album = this.songToBeApproved.album ? this.songToBeApproved.album.id : -1;
				this.selectedMusic = this.songToBeApproved.musicBy.slice(0);
				this.selectedLyrics = this.songToBeApproved.lyricsBy.slice(0);
			},
			editAndApprove: function() {
				var updated = this.gatherData();
				updated.id = this.songToBeApproved.id;
				Vue.http.put(this.requestBase + '/song', updated).then(
					() => {
						Vue.http.post(this.requestBase + '/approve/' + updated.id).then(
							() => {
								this.success = true;
								this.failure = false;
							}
						);
					}).catch(
						() => {
							this.failure = true;
							this.success = false;
						}
					);
			},
			submit: function() {
				if(this.submitting) {
					this.add();
				} else {
					this.editAndApprove();
				}
			},
			revert: function() {
				this.fillIn();
			},
			clearFields: function() {
				this.title = '';
				this.lyrics = '';
				this.language = 'English';
				this.performer = -1;
				this.album = -1;
				this.selectedMusic = [];
				this.selectedLyrics = [];
			},
			getSong: function() {
				Vue.http.get(this.requestBase + '/song/' + this.id).then(
					(response) => {
						this.songToBeApproved = response.body;
						if(!this.songToBeApproved.approved){
							this.songFound = true;
							this.fillIn();
						}
					},
					() => {
						this.songFound = false;
					}
				);
			},
			initializeFields: function() {
				if(this.submitting) {
					this.clearFields();
				} else {
					this.getSong();
				}
			}
		},
		mounted: function() {
			this.getPerformers();
			this.getAlbums();
			this.getAuthors();
		},
		created: function() {
			this.initializeFields();
		},
		watch: {
			$route() {
				this.initializeFields();
			}
		}
	};
</script>

<style>
	textarea {
		text-align: center
	}
</style>