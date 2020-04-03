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

new Vue({
  render: function (h) { return h(App) },
  router: router,
  store: store
}).$mount('#app')