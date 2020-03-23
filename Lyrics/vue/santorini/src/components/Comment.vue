<template>
	<div>
		{{comment.text}}
		<br/>
		Written by {{comment.user.username}} at {{comment.date}} [UTC].
	</div>
</template>

<script>

	export default {
		name: 'comment',
		props: ['comment'],
		data: function() {
			return {
			}
		},
		methods: {
		}
	}
</script>