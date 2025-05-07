<template>
  <section class="py-16 bg-muted/30">
    <div class="container mx-auto px-4">
      <h2 class="text-3xl font-bold mb-8">Mis Habilidades</h2>

      <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
        <!-- Lenguajes -->
        <ComponentCards
            class="transition-transform duration-400 transform hover:-translate-y-2 hover:shadow-lg"
            :tools="lenguajes"
            titulo="Lenguajes"/>

        <!-- Frameworks -->
        <ComponentCards
            class="transition-transform duration-400 transform hover:-translate-y-2 hover:shadow-lg"
            :tools="frameworks"
            titulo="Frameworks & librerias"/>

        <!-- Tools -->
        <ComponentCards
            class="transition-transform duration-400 transform hover:-translate-y-2 hover:shadow-lg"
            :tools="tecnologias"
            titulo="Herramientas & Tecnologías"/>

        <!-- Sistemas operativos -->
        <ComponentCards
            class="transition-transform duration-400 transform hover:-translate-y-2 hover:shadow-lg"
            titulo="Sistemas operativos"
            :tools="sistemasOperativos" />
       </div>
    </div>
  </section>
</template>

<script setup lang="ts">
import ComponentCards from "~/components/ComponentCards.vue";

const lenguajes = [
    { name: 'Python' },
    { name: 'JavaScript' },
    { name: 'TypeScript' },
]

const frameworks = [
  { name: 'Django REST' },
  { name: 'FastAPI' },
  { name: 'Flask' },
  { name: 'React' },
  { name: 'Vue 3' },
  { name: 'Next.js' },
  { name: 'Nuxt.js' },
  { name: 'PrimeVue' },
  { name: 'Quasar' },
  { name: 'Vuetify' },
  { name: 'HeroUI' },
  { name: 'NuxtUI' },
  { name: 'MaterialUI' },
  { name: 'Leaflet' },
  { name: 'OpenStreetMap' },
]

const tecnologias = [
    { name: 'Docker' },
    { name: 'Git' },
    { name: 'PostgreSQL' },
    { name: 'MySQL' },
    { name: 'SQLAlchemy' },
    { name: 'Postman' },
    { name: 'Google Cloud' },
    { name: 'AWS' },
    { name: 'Microsoft Azure' },
    { name: 'Firebase' },
    { name: 'Heroku' },
    { name: 'DigitalOcean' },
    { name: 'Vercel' },
    { name: 'Railway' }
]

const sistemasOperativos = [
    { name: 'Windows' },
    { name: 'MacOS' },
    { name: 'Ubuntu' }
]

</script>


