<template>
	<div>
		<div v-if="loggedIn()">
			<div v-if="songToBeApproved !== null && auth !== 'admin'">
				Access denied!
			</div>
			<div v-else>
				<form v-on:submit.prevent="submit()">
					<input v-model="title" placeholder="title" required/>
					<br/>
					<textarea v-model="lyrics" placeholder="lyrics" rows="30" cols="50" required/>
					<br/>
					<input type="radio" id="serbian" value="Serbian" v-model="language"/>
					<label for="serbian">Serbian</label>
					<br/>
					<input type="radio" id="english" value="English" v-model="language"/>
					<label for="english">English</label>
					<br/>
					<input type="radio" id="other" value="Other" v-model="language"/>
					<label for="other">Other</label>
					<br/>
					<select v-model="performer" required>
						<option v-for="performer in performers" v-bind:key="performer.id" v-bind:value="performer.id">{{performer.name}}</option>
					</select>
					<br/>
					<select v-model="album" required>
						<option v-for="album in albums" v-bind:key="album.id" v-bind:value="album.id">{{album.title}}</option>
					</select>
					<br/>
					<select v-model="author">
						<option v-for="author in authors" v-bind:key="author.id" v-bind:value="author">{{author.name}}</option>
					</select>
					<br/>
					<button type="button" v-on:click="addMusic">Add author to composers</button>
					<br/>
					<button type="button" v-on:click="addLyrics">Add author to lyrics writers</button>
					<br/>
					<p>
						Composers:
					</p>
					<table id="musicTable" class="table">
						<tbody><tr is="selectableRow" v-for="music in selectedMusic" v-bind:key="music.id" ><div slot="content">{{music.name}}</div></tr></tbody>
					</table>
					<button type="button" v-on:click="removeSelected('musicTable', selectedMusic)">Remove selected composers</button>
					<br/>
					<p>
						Lyrics writers:
					</p>
					<table id="lyricsTable" class="table">
						<tbody><tr is="selectableRow" v-for="lyrics in selectedLyrics" v-bind:key="lyrics.id" ><div slot="content">{{lyrics.name}}</div></tr></tbody>
					</table>
					<button type="button" v-on:click="removeSelected('lyricsTable', selectedLyrics)">Remove selected lyrics writers</button>
					<br/>
					<button type="submit">{{songToBeApproved === null ? 'Submit this song' : 'Approve of this song'}}</button>
					<div v-if="success" class="alert alert-success">{{songToBeApproved === null ? 'Song successfully submitted!' : 'Song approved of!'}}</div>
					<div v-if="failure" class="alert alert-danger">{{songToBeApproved === null ? 'Unauthorized access! You need to log in to perform this action.' : 'Access denied!'}}</div>
				</form>
			</div>
		</div>
		<div class="jumbotron" v-else>
			You need to log in to submit a song!
		</div>
	</div>
</template>

<script>

import Vue from 'vue'
import selectableRow from './SelectableTableRow.vue'

export default {
		name: 'addSong',
		props: {
			'auth': {},
			'songToBeApproved': {
				default: null
			}
		},
		components: {
			selectableRow
		},
		data: function() {
			return {
				title: '',
				lyrics: '',
				language: 'English',
				performer: null,
				performers: [],
				album: null,
				albums: [],
				selectedMusic: [],
				selectedLyrics: [],
				author: null,
				authors: [],
				success: false,
				failure: false
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
					"musicBy": this.selectedMusic,
					"lyricsBy": this.selectedLyrics
				}
			},
			add: function() {
				Vue.http.post("http://localhost:8080/Lyrics/api/song", this.gatherData()).then(
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
				Vue.http.get("http://localhost:8080/Lyrics/api/performer").then(
					response => {
						this.performers = response.body;
					}
				);
			},
			getAlbums: function() {
				Vue.http.get("http://localhost:8080/Lyrics/api/album").then(
					response => {
						this.albums = response.body;
					}
				);
			},
			getAuthors: function() {
				Vue.http.get("http://localhost:8080/Lyrics/api/author").then(
					response => {
						this.authors = response.body;
					}
				);
			},
			addMusic: function() {
				if(this.author) {
					this.addToSet(this.author, this.selectedMusic);
				} else {
					console.log('select an author');
				}
			},
			addLyrics: function() {
				if(this.author) {
					this.addToSet(this.author, this.selectedLyrics);
				} else {
					console.log('select an author');
				}
			},
			addToSet: function(elem, set) {
				if(!set.includes(elem)) {
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
					if(index === -1) {
						console.log('Fatal error!');
					} else {
						array.splice(index, 1);
					}
				}
			},
			removeSelected: function(id, array) {
				var table = document.getElementById(id);
				var tbody = table.firstChild;
				var rows = tbody.childNodes;
				rows.forEach(row => this.removeIfSelected(row, array));
			},
			loggedIn: function() {
				return this.auth !== 'none';
			},
			fillIn: function() {
				this.title = this.songToBeApproved.title;
				this.lyrics = this.songToBeApproved.lyrics;
				this.language = this.songToBeApproved.language;
				this.performer = this.songToBeApproved.performer.id;
				this.album = this.songToBeApproved.album.id;
				this.selectedMusic = this.songToBeApproved.musicBy;
				this.selectedLyrics = this.songToBeApproved.lyricsBy;
			},
			editAndApprove: function() {
				var updated = this.gatherData();
				updated.id = this.songToBeApproved.id;
				Vue.http.put("http://localhost:8080/Lyrics/api/song", updated).then(
					() => {
						Vue.http.post("http://localhost:8080/Lyrics/api/approve/" + updated.id).then(
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
				if(this.songToBeApproved === null) {
					this.add();
				} else {
					this.editAndApprove();
				}
			}
		},
		mounted: function() {
			this.getPerformers();
			this.getAlbums();
			this.getAuthors();
		},
		created: function() {
			if(this.songToBeApproved !== null) {
				this.fillIn();
			}
		}
	};
</script>