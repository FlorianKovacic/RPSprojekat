<template>
	<div>
		<input v-model="title" placeholder="title"/>
		<br/>
		<input v-model="lyrics" placeholder="lyrics"/>
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
		<input type="radio" id="any" value="Any" v-model="language"/>
		<label for="any">Any</label>
		<br/>
		<input v-model="performer" placeholder="performer"/>
		<br/>
		<input v-model="album" placeholder="album"/>
		<br/>
		<button v-on:click="search">Search for the song</button>
		<br/>
		<div v-if="searchDone">
			<div v-if="results.length">
				Results:
				<ol class="list-group">
					<li v-for="song in results" v-bind:key="song.id" class="list-group-item list-group-item-action" v-on:click="toSong(song)">
						<songElement v-bind:song="song" v-bind:full="false">
						</songElement>
					</li>
				</ol>
			</div>
			<div v-else>No songs match your search criteria.</div>
		</div>
	</div>
</template>

<script>
import songElement from './SongPage.vue'
import Vue from 'vue'

export default {
	name: 'songSearch',
	data: function() {
		return {
			title: '',
			lyrics: '',
			language: 'English',
			performer: '',
			album: '',
			criteria: null,
			results: [],
			searchDone: false
		}
	},
	components: {
		songElement
	},
	methods: {
		search: function() {
			this.criteria = {
				"title" : this.title,
				"lyrics" : this.lyrics,
				"language" : this.language,
				"performer" : this.performer,
				"album" : this.album
			};
			Vue.http.post("http://localhost:8080/Lyrics/api/songsearch", this.criteria).then(
				response => {
					this.results = response.body;
				}
			).then(
				() => {
					this.searchDone = true;
				}
			);
		},
		toSong: function(song) {
			this.$emit('toSong', song);
		}
	}
}
</script>