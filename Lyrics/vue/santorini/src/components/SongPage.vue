<template>
	<div>
		<h1>{{song.title}}</h1>
		<p>From {{song.album.title}} - {{song.album.year}}</p>
		<p>{{song.lyrics}}</p>
	</div>
</template>

<script>
export default {
		name: 'songElement',
		props: ['song']
	};
</script>