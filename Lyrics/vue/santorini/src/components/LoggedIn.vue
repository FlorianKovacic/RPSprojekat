<template>
	<div>
		<div v-if="loggedIn">
			<div>Logged in as: {{this.$session.get('username')}}</div>
			<a href="#" v-on:click="logOut">[Log out]</a>
		</div>
		<div v-else>
			<span>
				<a href="#" v-on:click="toLogin">[Log in]</a>
			</span>
			<span>
				<a href="#" v-on:click="toRegistration">[Register]</a>
			</span>
		</div>
	</div>
</template>

<script>

	export default {
		name: 'loggedIn',
		props: ['loggedIn'],
		data: function() {
			return {
			}
		},
		methods: {
			toLogin: function() {
				this.$emit('toLogin');
			},
			toRegistration: function() {
				this.$emit('toRegistration');
			},
			logOut: function() {
				this.$emit('logOut');
			}
		}
	}
</script>