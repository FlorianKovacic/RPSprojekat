<template>
	<div>
		<form v-on:submit.prevent="login">
			<input v-model="username" type="text" placeholder="username" required/>
			<br/>
			<input v-model="password" type="text" placeholder="password" required/>
			<br/>
			<button type="submit">Log in</button>
		</form>
		<div v-if="success" class="alert alert-success">Login successful!</div>
		<div v-if="failure" class="alert alert-danger">Invalid username and/or password!</div>
	</div>
</template>

<script>

import Vue from 'vue';
import VueJwtDecode from 'vue-jwt-decode'

export default {
	name: "login",
	data: function() {
		return {
			username: '',
			password: '',
			success: false,
			failure: false,
			user: null
		}
	},
	methods: {
		login: function() {
			this.user = {
				"username" : this.username,
				"password" : this.password
			};
			this.$http.post("http://localhost:8080/Lyrics/api/login", this.user).then(
				response => {
					this.$session.start();
					var jwt = response.body;
					this.$session.set('jwt', jwt);
					this.$session.set('username', this.username);
					var decodedJWT = VueJwtDecode.decode(jwt);
					this.$session.set('admin', decodedJWT.admin);
					Vue.http.headers.common['Authorization'] = 'Bearer' + response.body;
					this.$emit('logIn');
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