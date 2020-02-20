<template>
	<div>
		<h1>{{album.title}}</h1>
		<p>Songs: </p>
		<p v-for="song in album.songs" v-bind:key="song.id">{{song.title}}</p>
	</div>
</template>

<script>
export default {
		name: 'albumElement',
		props: ['album']
	};
</script>