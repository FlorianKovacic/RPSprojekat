<template>
	<div>
		<div class="mb-1">
			<label for="title">Title:</label>
			<input type="text" id="title" v-model="title" placeholder="title"/>
		</div>
		<div class="mb-3">
			<label for="lyrics">Lyrics:</label>
			<input type="text" id="lyrics" v-model="lyrics" placeholder="lyrics"/>
		</div>
		<div class="mb-3">
			<span class="mr-3">Language:</span>
			<input type="radio" id="serbian" value="Serbian" v-model="language"/>
			<label for="serbian">Serbian</label>
			<input type="radio" id="english" value="English" v-model="language"/>
			<label for="english">English</label>
			<input type="radio" id="other" value="Other" v-model="language"/>
			<label for="other">Other</label>
			<input type="radio" id="any" value="Any" v-model="language"/>
			<label for="any">Any</label>
		</div>
		<div class="mb-1">
			<label for="peformer">Performer:</label>
			<input type="text" id="performer" v-model="performer" placeholder="performer"/>
		</div>
		<div class="mb-3">
			<label for="album">Album:</label>
			<input type="text" id="album" v-model="album" placeholder="album"/>
		</div>
		<div class="my-5">
			<button class="btn-primary" v-on:click="search">Search for the song</button>
		</div>
		<div v-if="searchDone">
			<div v-if="results.length">
				<div class="mb-3">Results:</div>
				<ol class="list-group">
					<li v-for="song in results" v-bind:key="song.id" class="list-group-item list-group-item-action container mb-2" v-on:click="toSong(song)">
						<songEntry v-bind:song="song">
						</songEntry>
					</li>
				</ol>
			</div>
			<div v-else>No songs match your search criteria.</div>
		</div>
	</div>
</template>

<script>
import songEntry from './SongEntry.vue'
import Vue from 'vue'
import urls from './../main.js'

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
			searchDone: false,
			requestBase: urls.requestBase
		}
	},
	components: {
		songEntry
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
			Vue.http.post(this.requestBase + '/songsearch', this.criteria).then(
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
			this.$store.commit('setSong', song);
			this.$router.push({name: 'song'});
		}
	}
}
</script>