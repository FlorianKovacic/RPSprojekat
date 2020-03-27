<template>
	<div>
		{{comment.text}}
		<br/>
		<div class="float-right">Written by {{comment.user.username}} at {{comment.date}} [UTC].</div>
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