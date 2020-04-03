import 'bootstrap/dist/css/bootstrap.min.css';
import Vue from 'vue'
import App from './App.vue'
import VueResource from 'vue-resource';
import VueRouter from 'vue-router';
import Vuex from 'vuex'

import router from './router.js'
import store from './store.js'

Vue.use(VueResource);
Vue.use(VueRouter);
Vue.use(Vuex);
Vue.config.productionTip = false;

const protocol = 'http';
const server = 'localhost';
const port = 8080;
const protocolServerAndPort = protocol + '://' + server + ':' + port;
//still has to be set separately in vue.config.js as it's apparently impossible to import values there
const projectRoot = '/Lyrics';
const home = protocolServerAndPort + projectRoot;
const requestRoute = '/api';
const requestBase = home + requestRoute;
const urls = {
	projectRoot: projectRoot,
	requestBase: requestBase
};

new Vue({
  render: function (h) { return h(App) },
  router: router,
  store: store
}).$mount('#app')


export default urls;