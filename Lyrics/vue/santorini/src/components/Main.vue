<template>
	<div>
		<songElement v-for="song in songs" v-bind:key="song.id" v-bind:song="song"></songElement>
		<!-- <songSearch></songSearch> -->
		<albumElement v-for="album in albums" v-bind:key="album.id" v-bind:album="album"></albumElement>
	</div>
</template>

<script>

import songElement from './SongPage.vue'
import albumElement from './Album.vue'
// import songSearch from './SongSearch.vue'

export default {
	name: 'Main',
	data: function() {
		return {
			songs: [],
			albums: []
		}
	},
	components: {
		songElement,
		albumElement,
		// songSearch
	},
	methods: {
		getSongs: function() {
			this.$http.get("http://localhost:8080/Lyrics/api/song").then(
				response => {
					this.songs = response.body;
				}
			);
		},
		getAlbums: function() {
			this.$http.get("http://localhost:8080/Lyrics/api/album").then(
				response => {
					this.albums = response.body;
				}
			);
		}
	},
	mounted: function() {
		this.getSongs();
		this.getAlbums();
	}
}
</script>>