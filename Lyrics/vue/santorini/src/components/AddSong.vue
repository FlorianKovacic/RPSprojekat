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
		<button v-on:click="add">Add this song</button>
		<br/>
		<div v-if="success" class="alert alert-success">Song successfully added!</div>
		<div v-if="failure" class="alert alert-danger">Unauthorized access! You need to log in to perform this action.</div>
	</div>
</template>

<script>

import Vue from 'vue'

export default {
		name: 'addSong',
		data: function() {
			return {
				title: '',
				lyrics: '',
				language: 'English',
				success: false,
				failure: false
			}
		},
		methods: {
			add: function() {
				Vue.http.post("http://localhost:8080/Lyrics/api/song", {
					"title": this.title,
					"lyrics": this.lyrics,
					"language": this.language
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
			}
		}
	};
</script>