<template>
	<div class="container-fluid">
		<form v-on:submit.prevent="add">
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
			<button type="submit">Add this song</button>
			<div v-if="success" class="alert alert-success">Song successfully added!</div>
			<div v-if="failure" class="alert alert-danger">Unauthorized access! You need to log in to perform this action.</div>
		</form>
	</div>
</template>

<script>

import Vue from 'vue'
import selectableRow from './SelectableTableRow.vue'

export default {
		name: 'addSong',
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
			add: function() {
				Vue.http.post("http://localhost:8080/Lyrics/api/song", {
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
				}).then(
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
			}
		},
		mounted: function() {
			this.getPerformers();
			this.getAlbums();
			this.getAuthors();
		}
	};
</script>