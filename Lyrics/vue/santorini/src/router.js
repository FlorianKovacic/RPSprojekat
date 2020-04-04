import VueRouter from 'vue-router'
import urls from './urls.js'

const routes = [
	{name: 'home', path: '/', component: () => import('./components/Home.vue')},
	{name: 'search', path: '/search', component: () => import('./components/SongSearch.vue')},
	{name: 'submit', path: '/submit', component: () => import('./components/AddSong.vue')},
	{name: 'login', path: '/login', component: () => import('./components/Login.vue')},
	{name: 'registration', path: '/registration', component: () => import('./components/Registration.vue')},
	{name: 'review', path: '/review', component: () => import('./components/SongReview.vue')},
	{name: 'reviewing', path: '/reviewing/:id', component: () => import('./components/AddSong.vue'), props: true},
	{name: 'song', path: '/song/:id', component: () => import('./components/SongPage.vue'), props: true},
	{path: '*', component: () => import('./components/NotFoundComponent.vue')}
]

const router = new VueRouter({
	base: urls.projectRoot,
	mode: 'history',
	routes: routes
})

export default router;