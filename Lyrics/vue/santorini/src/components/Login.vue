<template>
	<div class="py-5">
		<form v-on:submit.prevent="login">
			<div class="form-group mb-2">
				<input v-model="username" type="text" placeholder="username" required/>
			</div>
			<div class="form-group mb-3">
				<input v-model="password" type="text" placeholder="password" required/>
			</div>
			<div class="form-group my-3	">
				<button type="submit">Log in</button>
			</div>
		</form>
		<div v-if="success" class="alert alert-success">Login successful!</div>
		<div v-if="failure" class="alert alert-danger">Invalid username and/or password!</div>
	</div>
</template>

<script>

import Vue from 'vue';
import VueJwtDecode from 'vue-jwt-decode'
import urls from './../main.js'

export default {
	name: "login",
	data: function() {
		return {
			username: '',
			password: '',
			success: false,
			failure: false,
			user: null,
			requestBase: urls.requestBase
		}
	},
	methods: {
		login: function() {
			this.user = {
				"username" : this.username,
				"password" : this.password
			};
			this.$http.post(this.requestBase + '/login', this.user).then(
				response => {
					const jwt = response.body;
					this.$store.commit('setJWT', jwt);
					this.$store.commit('setUsername', this.username);
					const decodedJWT = VueJwtDecode.decode(jwt);
					this.$store.commit('setAuth', decodedJWT.admin ? 'admin' : 'user');
					Vue.http.headers.common['Authorization'] = 'Bearer' + jwt;
					this.$router.push({name: 'home'});
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
}
</script>