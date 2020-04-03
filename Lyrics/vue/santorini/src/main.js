import 'bootstrap/dist/css/bootstrap.min.css';
import Vue from 'vue'
import App from './App.vue'
import VueResource from 'vue-resource';
import VueRouter from 'vue-router';
import Vuex from 'vuex'

import songSearch from './components/SongSearch.vue'
import login from './components/Login.vue'
import addSong from './components/AddSong.vue'
import registration from './components/Registration.vue'
import home from './components/Home.vue'
import songReview from './components/SongReview.vue'
import songPage from './components/SongPage.vue'

Vue.use(VueResource);
Vue.use(VueRouter);
Vue.use(Vuex);
Vue.config.productionTip = false;

const routes = [
	{name: 'home', path: '/', component: home},
	{name: 'search', path: '/search', component: songSearch},
	{name: 'submit', path: '/submit', component: addSong},
	{name: 'login', path: '/login', component: login},
	{name: 'registration', path: '/registration', component: registration},
	{name: 'review', path: '/review', component: songReview},
	{name: 'reviewing', path: '/reviewing', component: addSong},
	{name: 'song', path: '/song', component: songPage, props: {full: true}},
]

const router = new VueRouter({
	base: '/Lyrics',
	mode: 'history',
	routes: routes
})


const store = new Vuex.Store({
	state: {
		jwt: '',
		auth: 'none',
		username: '',
		song: null
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
		},
		setSong(state, newSong) {
			state.song = newSong;
		}
	}
})

new Vue({
  render: function (h) { return h(App) },
  router: router,
  store: store
}).$mount('#app')
