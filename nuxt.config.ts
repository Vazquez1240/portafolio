// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },

  modules: [
    '@nuxt/ui',
    '@nuxt/eslint',
    '@nuxt/content',
    '@nuxt/fonts',
    '@nuxt/icon',
    '@nuxt/image',
    '@nuxt/scripts',
    '@nuxt/test-utils'
  ],

  css: ['~/assets/css/main.css'],

  future: {
    compatibilityVersion: 4
  },

  image: {
    domains: ['cloud-images-mdtv.web.app']
  },

  compatibilityDate: '2024-11-27'
})
