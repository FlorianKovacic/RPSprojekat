<template>
	<div>
		Some text.
		<table>
			<tr v-for="song in songs" v-bind:key="song.id"><td>{{song.title}}<button v-on:click="deleteSong(song.id)">Delete song</button></td></tr>
		</table>
	</div>
</template>

<script>
export default {
	name: 'Test',
	methods: {
		getSongs: function() {
			this.$http.get("http://localhost:8080/Lyrics/api/song").then(
				response => {
					//response.body.map(song => this.songs.push(song));
					this.songs = response.body;
				}
			);
		},
		deleteSong: function(id) {
			this.$http.delete("http://localhost:8080/Lyrics/api/song/"+id);
			this.getSongs();
		}
	},
	data: function() {
		return {
			songs: []
		}
	},
	mounted: function() {
		this.getSongs();
	}
}
</script>