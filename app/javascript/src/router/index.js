import Vue from 'vue'
import Router from 'vue-router'
import Home from '../pages/index.vue'

Vue.use(Router)

const router = new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      name: 'home',
      component: Home
    }
  ]
})

export default router