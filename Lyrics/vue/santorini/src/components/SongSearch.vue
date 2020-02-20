<template>
	<div>
		<p>
			<input v-model="title"/>
		</p>
		<p>
			<input v-model="lyrics"/>
		</p>
		<p>
			<button v-on:click="search">Search for the song</button>
		</p>
		<ol>
			<li is="songElement" v-for="song in results" v-bind:key="song.id" v-bind:song="song"></li>
		</ol>
	</div>
</template>

<script>
import songElement from './SongPage.vue'

export default {
	name: 'songSearch',
	data: function() {
		return {
			title: '',
			lyrics: '',
			album: null,
			performers: null,
			criteria: null,
			results: []
		}
	},
	components: {
		songElement
	},
	methods: {
		search: function() {
			this.criteria = {
				title : this.title,
				lyrics : this.lyrics,
				album : this.album,
				performers : this.performers
			};
			this.$http.post("http://localhost:8080/Lyrics/api/songsearch", this.criteria).then(
				response => {
					this.results = response.body;
				}
			);
		}
	}
}
</script>