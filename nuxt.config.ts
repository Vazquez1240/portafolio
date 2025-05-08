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
    '@nuxt/test-utils',
    '@vueuse/motion/nuxt'
  ],

  css: ['~/assets/css/main.css'],

  future: {
    compatibilityVersion: 4
  },

  image: {
    domains: ['cloud-images-mdtv.web.app']
  },

  colorMode: {
    preference: 'light', // establecer el modo por defecto
    fallback: 'light', // fallback si no se puede detectar el sistema
    classSuffix: '' // evita usar -dark o -light al final
  },

  compatibilityDate: '2024-11-27'
})
