<template>
	<div v-if="full">
		<h1>{{song.title}}</h1>
		<h3>By {{song.performer ? song.performer.name : 'unknown artist'}}</h3>
		<p>{{song.lyrics}}</p>
		<p v-if="song.album">From {{song.album.title}} - {{song.album.year}}</p>
		<div>Music composed by:</div>
		<p v-if="song.musicBy.length">{{song.musicBy.map((m) => m.name).toString()}}</p>
		<div v-else>unknown</div>
		<div>Lyrics written by:</div>
		<p v-if="song.lyricsBy.length">{{song.lyricsBy.map((l) => l.name).toString()}}</p>
		<div v-else>unknown</div>
		<br/>
		<div>Uploaded by:</div>
		<p>{{song.uploader.username}}</p>
		<br/>
		<div>
			<textarea v-model="text" rows="3" cols="60"></textarea>
			<br/>
			<button type="button" v-on:click="comment()">Post</button>
			<div class="alert alert-danger" v-if="failure">You have to log in to leave a comment!</div>
		</div>
		<div v-if="comments.length">
			<ul class="list-group">
				<li v-for="comment in comments" v-bind:key="comment.id" class="list-group-item">
					<comment v-bind:comment="comment"></comment>
				</li>
			</ul>
		</div>
		<div v-else>Be the first to leave a comment!</div>
	</div>
	<div v-else>
		{{song.title}} by {{song.performer.name}}
	</div>
</template>

<script>
import Vue from 'vue'
import comment from './Comment.vue'

export default {
		name: 'songElement',
		props: ['song', 'full'],
		components: {
			comment
		},
		data: function() {
			return {
				comments: [],
				text: '',
				failure: false
			}
		},
		methods: {
			getComments: function() {
				var songId = {"id": this.song.id};
				Vue.http.post("http://localhost:8080/Lyrics/api/comment", songId).then(
					(response) => {
						this.comments = response.body;
					}
				);
			},
			comment: function() {
				var posting = {"text": this.text, "user": {"username": this.$session.get('username')}, "song": {"id": this.song.id}};
				Vue.http.put("http://localhost:8080/Lyrics/api/comment", posting).then(
					() => {
						this.failure = false;
						this.getComments();
					},
					() => {
						this.failure = true;
					}
				)
			}
		},
		mounted: function() {
			if(this.full) {
				this.getComments();
			}
		}
	};
</script>