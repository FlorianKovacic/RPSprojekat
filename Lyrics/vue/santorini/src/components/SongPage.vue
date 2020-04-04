<template>
	<div>
		<div v-if="songFound">
			<h1>{{song.title}}</h1>
			<h4>By {{song.performer ? song.performer.name : 'unknown artist'}}</h4>
			<div class="my-5">
				<p><pre>{{song.lyrics}}</pre></p>
			</div>
			<p v-if="song.album">From {{song.album.title}} - {{song.album.year}}</p>
			<div class="mb-2">
				<div>Music composed by:</div>
				<p v-if="song.musicBy.length">{{song.musicBy.map((m) => m.name).toString()}}</p>
				<div v-else>unknown</div>
			</div>
			<div class="mb-4">
				<div>Lyrics written by:</div>
				<p v-if="song.lyricsBy.length">{{song.lyricsBy.map((l) => l.name).toString()}}</p>
				<div v-else>unknown</div>
			</div>
			<div>Uploaded by:</div>
			<p>{{song.uploader.username}}</p>
			<br/>
			<div>
				<div class="mb-3">
					<textarea v-model="text" rows="3" cols="60" placeholder="Write a comment..."></textarea>
				</div>
				<div class="mb-3">
					<button type="button" v-on:click="comment()">Post</button>
				</div>
				<div class="alert alert-danger" v-if="failure">You have to log in to leave a comment!</div>
			</div>
			<div v-if="comments.length">
				<ul class="list-group">
					<li v-for="comment in comments" v-bind:key="comment.id" class="list-group-item mb-4 container rounded">
						<comment v-bind:comment="comment"></comment>
					</li>
				</ul>
			</div>
			<div class="mb-3" v-else>Be the first to leave a comment!</div>
		</div>
		<div v-else>
			<h1>Not found</h1>
		</div>
	</div>
</template>

<script>
import Vue from 'vue'
import comment from './Comment.vue'
import urls from './../urls.js'

export default {
		name: 'songPage',
		props: ['id'],
		components: {
			comment
		},
		data: function() {
			return {
				song: null,
				comments: [],
				text: '',
				failure: false,
				requestBase: urls.requestBase,
				songFound: false
			}
		},
		computed: {
			username() {
				return this.$store.state.username;
			}
		},
		methods: {
			getComments: function() {
				var songId = {"id": this.song.id};
				Vue.http.post(this.requestBase + '/comment', songId).then(
					(response) => {
						this.comments = response.body;
					}
				);
			},
			comment: function() {
				var posting = {"text": this.text, "user": {"username": this.username}, "song": {"id": this.song.id}};
				Vue.http.put(this.requestBase + '/comment', posting).then(
					() => {
						this.failure = false;
						this.getComments();
					},
					() => {
						this.failure = true;
					}
				)
			},
			getSong: function() {
				Vue.http.get(this.requestBase + '/song/' + this.id).then(
					(response) => {
						this.song = response.body;
						if(this.song.approved) {
							this.comments = this.song.comments;
							this.songFound = true;
						} else {
							this.songFound = false;
						}
					},
					() => {
						this.songFound = false;
					}
				);
			}
		},
		mounted: function() {
			this.getSong();
		},
		watch: {
			$route() {
				this.getSong();
			}
		}
	};
</script>