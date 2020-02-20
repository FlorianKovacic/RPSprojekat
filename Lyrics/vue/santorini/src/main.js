import Vue from 'vue'
import App from './App.vue'
import VueResource from 'vue-resource';
import 'bootstrap/dist/css/bootstrap.min.css';

Vue.use(VueResource);
Vue.config.productionTip = false

new Vue({
  render: function (h) { return h(App) },
}).$mount('#app')
