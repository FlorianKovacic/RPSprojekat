<template>
	<div v-bind:class="{active: hover}" v-on:mouseover="hover = true" v-on:mouseleave="hover = false">
		<slot>
		</slot>
	</div>
</template>

<script>

	export default {
		name: 'hoverableWrapper',
		data: function() {
			return {
				hover: false
			}
		},
		methods: {
		}
	}
</script>