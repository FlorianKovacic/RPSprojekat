<template>
	<div class="py-5">
		<form v-on:submit.prevent="register">
			<div class="form-group mb-2">
				<input v-model="username" type="text" placeholder="username" required/>
			</div>
			<div class="form-group mb-2">
				<input v-model="password" type="text" placeholder="password" required/>
			</div>
			<div class="form-group mb-3">
				<input v-model="emailAdress" type="email" placeholder="e-mail adress" required/>
			</div>
			<div class="form-group my-3	">
				<button type="submit">Register</button>
			</div>
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