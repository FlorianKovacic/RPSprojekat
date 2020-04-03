<template>
	<div>
		{{song.title + ' by ' + (song.performer ? song.performer.name : 'unknown artist')}}
	</div>
</template>

<script>
export default {
		name: 'songEntry',
		props: [
			'song'
		],
		data: function() {
			return {
			}
		},
		methods: {
		}
	};
</script>