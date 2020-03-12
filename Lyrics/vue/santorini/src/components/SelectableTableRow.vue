<template>
	<tr  v-bind:class="{'table-active': selected}" v-on:click="toggle">
		<td>
			<slot name="content">
			</slot>
		</td>
	</tr>
</template>

<script>
export default {
	name: 'selectableRow',
	data: function() {
		return {
			selected: false
		}
	},
	methods: {
		toggle: function() {
			this.selected = !this.selected;
		}
	}
}
</script>