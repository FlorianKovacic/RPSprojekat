<template>
	<div class="my-5">
		<div v-if="pendingSongs.length">
			<ol class="list-group">
				<li v-for="song in pendingSongs" v-bind:key="song.id" class="list-group-item list-group-item-action container mb-2" v-on:click="toReview(song)">
					<songEntry v-bind:song="song"></songEntry>
				</li>
			</ol>
		</div>
		<div v-else>No pending submissions.</div>
	</div>
</template>

<script>
import Vue from 'vue'
import songEntry from './SongEntry.vue'
import urls from './../urls.js'

	export default {
		name: 'songReview',
		data: function() {
			return {
				pendingSongs: [],
				requestBase: urls.requestBase
			}
		},
		components: {
			songEntry
		},
		methods: {
			getSongs: function() {
				Vue.http.get(this.requestBase + '/pending').then(
					(response) => {
						this.pendingSongs = response.body;
					}
				);
			},
			toReview: function(song) {
				this.$router.push({name: 'reviewing', params: {id: song.id}});
			}
		},
		mounted: function() {
			this.getSongs();
		}
	}
</script>