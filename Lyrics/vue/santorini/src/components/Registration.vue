<template>
	<div>
		<form v-on:submit.prevent="register">
			<input v-model="username" type="text" placeholder="username" required/>
			<br/>
			<input v-model="password" type="text" placeholder="password" required/>
			<br/>
			<input v-model="emailAdress" type="email" placeholder="e-mail adress" required/>
			<br/>
			<button type="submit">Register</button>
			<div v-if="success" class="alert alert-success">Registration successful!</div>
			<div v-if="failure" class="alert alert-danger">Username unfortunately taken, pick another one!</div>
		</form>
	</div>
</template>

<script>

import Vue from 'vue'

	export default {
		name: 'registration',
		data: function() {
			return {
				username: '',
				password: '',
				emailAdress: '',
				success: false,
				failure: false
			}
		},
		methods: {
			register: function() {
				Vue.http.put("http://localhost:8080/Lyrics/api/register", {
					"username": this.username,
					"password": this.password,
					"emailAdress": this.emailAdress
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
	}
</script>