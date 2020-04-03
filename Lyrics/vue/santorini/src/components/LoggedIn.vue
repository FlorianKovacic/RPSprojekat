<template>
	<div>
		<div v-if="loggedIn">
			<div>Logged in as: {{username}}</div>
			<router-link :to="{name: 'home'}" v-on:click.native="logOut()">[Log out]</router-link>
		</div>
		<div v-else>
			<span>
				<router-link :to="{name: 'login'}">[Log in]</router-link>
			</span>
			<span>
				<router-link :to="{name: 'registration'}">[Register]</router-link>
			</span>
		</div>
	</div>
</template>

<script>

import Vue from 'vue'

	export default {
		name: 'loggedIn',
		data: function() {
			return {
			}
		},
		computed: {
			username() {
				return this.$store.state.username;
			},
			loggedIn() {
				return this.$store.getters.loggedIn;
			}
		},
		methods: {
			logOut: function() {
				this.$store.commit('endSession');
				Vue.http.headers.common['Authorization'] = null;
			}
		}
	}
</script>