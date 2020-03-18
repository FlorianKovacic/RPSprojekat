<template>
	<div v-if="full">
		<h1>{{song.title}}</h1>
		<h3>By {{song.performer.name}}</h3>
		<p>From {{song.album.title}} - {{song.album.year}}</p>
		<p>{{song.lyrics}}</p>
	</div>
	<div v-else>
		{{song.title}} by {{song.performer.name}}
	</div>
</template>

<script>
export default {
		name: 'songElement',
		props: ['song', 'full']
	};
</script>