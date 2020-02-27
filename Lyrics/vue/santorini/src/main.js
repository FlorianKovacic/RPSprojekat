import Vue from 'vue'
import App from './App.vue'
import VueResource from 'vue-resource';
import VueSession from 'vue-session';
import 'bootstrap/dist/css/bootstrap.min.css';

Vue.use(VueResource);
Vue.use(VueSession);
Vue.config.productionTip = false;

new Vue({
  render: function (h) { return h(App) },
}).$mount('#app')
