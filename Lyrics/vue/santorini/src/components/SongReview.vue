<template>
	<div>
		<div v-if="pendingSongs.length">
			<ol class="list-group">
				<li v-for="song in pendingSongs" v-bind:key="song.id" class="list-group-item list-group-item-action" v-on:click="toReview(song)">
					<songElement v-bind:song="song" v-bind:full="false"></songElement>
				</li>
			</ol>
		</div>
		<div v-else>No pending submissions.</div>
	</div>
</template>

<script>
import Vue from 'vue'
import songElement from './SongPage.vue'

	export default {
		name: 'songReview',
		data: function() {
			return {
				pendingSongs: []
			}
		},
		components: {
			songElement
		},
		methods: {
			getSongs: function() {
				Vue.http.get("http://localhost:8080/Lyrics/api/pending").then(
					(response) => {
						this.pendingSongs = response.body;
					}
				);
			},
			toReview: function(song) {
				this.$emit('toReview', song);
			}
		},
		mounted: function() {
			this.getSongs();
		}
	}
</script>