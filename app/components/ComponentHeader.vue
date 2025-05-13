<template>
  <header class="py-6 px-4">
    <UContainer class="flex justify-between items-center">
      <!-- Logo -->
      <div
          v-motion
          :initial="{ opacity: 0, x: -50 }"
          :enter="{ opacity: 1, x: 0 }"
          :delay="100"
          class="font-bold text-2xl">
      </div>

      <nav
          v-motion
          :initial="{ opacity: 0, y: -20 }"
          :enter="{ opacity: 1, y: 0 }"
          :delay="500"
          class="hidden md:flex space-x-8">

        <NuxtLink
            v-for="(link, index) in links"
            :key="index"
            :to="link.to"
            :class="[
            'font-medium transition-all duration-300 hover:scale-110',
            route.path === link.to ? 'text-secondary' : 'text-muted-foreground hover:text-secondary'
          ]">
          {{ link.label }}
        </NuxtLink>
      </nav>

      <!-- Botón para menú móvil -->
      <UButton
          v-motion
          :initial="{ opacity: 0, x: 50 }"
          :enter="{ opacity: 1, x: 0 }"
          :delay="200"
          iconOnly
          variant="outline"
          class="md:hidden"
          aria-label="Abrir menú">
        <UIcon name="line-md:close-to-menu-alt-transition" />
      </UButton>
    </UContainer>
  </header>
</template>

<script setup lang="ts">
import { useRoute } from 'vue-router'

const route = useRoute()

const links = [
  { to: '/', label: 'Inicio' },
  { to: '/proyectos', label: 'Proyectos' },
  { to: '/sobre-mi', label: 'Sobre Mí' },
  { to: '/curriculum', label: 'Curriculum' },
]
</script>
