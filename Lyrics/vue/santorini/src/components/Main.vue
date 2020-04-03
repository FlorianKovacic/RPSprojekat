<template>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-10">
				<ul class="nav nav-pills">
					<li class="nav-item">
						<router-link :to="{name: 'home'}" class="nav-link" :active-class="'active'" exact>Home</router-link>
					</li>
					<li class="nav-item">
						<router-link :to="{name: 'search'}" class="nav-link" :active-class="'active'" exact>Search for a song</router-link>
					</li>
					<li class="nav-item">
						<router-link :to="{name: 'submit'}" class="nav-link" :active-class="'active'" exact>Submit a song</router-link>
					</li>
					<li class="nav-item">
						<router-link v-if="loggedInAsAdmin" :to="{name: 'review'}" class="nav-link" :active-class="'active'" exact>Review pending submissions</router-link>
					</li>
				</ul>
			</div>
			<div class="col-sm-2">
				<loggedIn></loggedIn>
			</div>
		</div>
		<router-view></router-view>
	</div>
</template>

<script>

import loggedIn from './LoggedIn.vue'

export default {
	name: 'Main',
	data: function() {
		return {
			song: null
		}
	},
	computed: {
		loggedInAsAdmin() {
			return this.$store.getters.loggedInAsAdmin;
		}
	},
	components: {
		loggedIn
	},
	methods: {
	},
	mounted: function() {
	}
}
</script>

<style>
	body {
		background-color: rgb(248, 244, 211, 0.5);
	}
	label {
		padding-left: 5px;
		padding-right: 15px;
	}
	span {
		padding-left: 5px;
		padding-right: 5px;
	}
</style>