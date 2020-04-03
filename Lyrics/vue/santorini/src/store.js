import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex);

const store = new Vuex.Store({
	state: {
		jwt: '',
		auth: 'none',
		username: ''
	},
	getters: {
		loggedIn: state => {
			return state.auth !== 'none';
		},
		loggedInAsAdmin: state => {
			return state.auth === 'admin';
		}
	},
	mutations: {
		setJWT(state, newJWT) {
			state.jwt = newJWT;
		},
		setAuth(state, newAuth) {
			state.auth = newAuth;
		},
		setUsername(state, newUsername) {
			state.username = newUsername;
		},
		endSession(state) {
			state.jwt = '';
			state.auth = 'none';
			state.username = '';
		}
	}
})

export default store;