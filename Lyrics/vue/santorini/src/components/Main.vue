<template>
	<div>
		<ul class="nav">
			<li class="nav-item">
				<a class="nav-link" href="#" type="button">Click me!</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#" type="button">Click me!</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#" type="button">Click me!</a>
			</li>
		</ul>
		<home></home>
		<!--<songSearch></songSearch>
		<login></login>
		<addSong></addSong>
		<registration></registration>-->
	</div>
</template>

<script>

/* import songElement from './SongPage.vue'
import albumElement from './Album.vue'
import songSearch from './SongSearch.vue'
import login from './Login.vue'
import addSong from './AddSong.vue'
import registration from './Registration.vue'*/
import home from './Home.vue'

export default {
	name: 'Main',
	data: function() {
		return {
			state: 'home',
			auth: 'none'
		}
	},
	components: {
		/* songElement,
		albumElement,
		songSearch,
		login,
		addSong,
		registration,*/
		home
	},
	methods: {
	},
	mounted: function() {
	}
}
</script>>