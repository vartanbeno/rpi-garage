import Vue from 'vue';
import App from './App.vue';
import { library } from '@fortawesome/fontawesome-svg-core';
import {
    faLightbulb,
    faLock,
    faWarehouse
} from '@fortawesome/free-solid-svg-icons';
import { faGithub } from '@fortawesome/fontawesome-free-brands';
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome';

library.add(faLightbulb, faLock, faWarehouse, faGithub);

Vue.component('font-awesome-icon', FontAwesomeIcon);

Vue.config.productionTip = false;

new Vue({
    render: h => h(App)
}).$mount('#app');
