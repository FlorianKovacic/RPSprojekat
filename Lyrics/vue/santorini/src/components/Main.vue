<template>
	<div>
		<ul class="nav nav-pills">
			<li class="nav-item">
				<a class="nav-link" v-bind:class="{active: state=== 'home'}" href="#" type="button" v-on:click="setState('home')">Home</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" v-bind:class="{active: state=== 'search'}" href="#" type="button" v-on:click="setState('search')">Search for a song</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" v-bind:class="{active: state=== 'submit'}" href="#" type="button" v-on:click="setState('submit')">Submit a song</a>
			</li>
		</ul>
		<home v-if="state === 'home'"></home>
		<songSearch v-else-if="state === 'search'"></songSearch>
		<addSong v-else-if="state === 'submit'"></addSong>
		<login v-else-if="state === 'login'" v-on:logIn="logIn()"></login>
		<registration v-else-if="state === 'registration'"></registration>
		<loggedIn v-bind:loggedIn="auth !== 'none'" v-on:toLogin="toLogin()" v-on:toRegistration="toRegistration()" v-on:logOut="logOut()"></loggedIn>
	</div>
</template>

<script>

import Vue from 'vue'
//import songElement from './SongPage.vue'
//import albumElement from './Album.vue'
import songSearch from './SongSearch.vue'
import login from './Login.vue'
import addSong from './AddSong.vue'
import registration from './Registration.vue'
import home from './Home.vue'
import loggedIn from './LoggedIn.vue'

export default {
	name: 'Main',
	data: function() {
		return {
			state: 'home',
			auth: 'none'
		}
	},
	components: {
		//songElement,
		//albumElement,
		songSearch,
		login,
		addSong,
		registration,
		home,
		loggedIn
	},
	methods: {
		setState: function(state) {
			this.state = state;
		},
		toLogin: function() {
			this.setState('login');
		},
		toRegistration: function() {
			this.setState('registration');
		},
		logIn: function() {
			this.auth = this.$session.get('admin') ? 'admin' : 'user';
			this.setState('home');
		},
		logOut: function() {
			this.auth = 'none';
			this.$session.destroy();
			Vue.http.headers.common['Authorization'] = null;
		}
	},
	mounted: function() {
	}
}
</script>>