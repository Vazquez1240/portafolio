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

      <!-- Menú de navegación para desktop -->
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
      <button
          @click="isMenuOpen = !isMenuOpen"
          class="md:hidden p-2 rounded-lg hover:bg-gray-100 dark:hover:bg-gray-800">
        <UIcon
          :name="isMenuOpen ? 'line-md:menu-to-close-alt-transition' : 'line-md:close-to-menu-alt-transition'"
          class="w-6 h-6"
        />
      </button>
    </UContainer>

    <!-- Menú móvil -->
    <div
      v-show="isMenuOpen"
      class="md:hidden fixed inset-0 z-40"
    >
      <!-- Overlay -->
      <div
        class="absolute inset-0 bg-black/50 backdrop-blur-sm transition-all duration-300 ease-in-out"
        :class="isMenuOpen ? 'opacity-100' : 'opacity-0'"
        @click="isMenuOpen = false"
      ></div>

      <!-- Menú -->
      <div
        class="absolute top-0 right-0 h-full w-72 bg-white dark:bg-gray-900 shadow-2xl transform transition-all duration-300 ease-in-out"
        :class="isMenuOpen ? 'translate-x-0' : 'translate-x-full'"
      >
        <div class="p-6">
          <nav class="mt-8 space-y-2">
            <NuxtLink
              v-for="(link, index) in links"
              :key="index"
              :to="link.to"
              class="block py-3 px-4 text-lg font-medium rounded-lg transition-colors duration-200"
              :class="[
                route.path === link.to
                  ? 'text-secondary bg-secondary/10'
                  : 'text-gray-700 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-800'
              ]"
              @click="isMenuOpen = false"
            >
              {{ link.label }}
            </NuxtLink>
          </nav>
        </div>
      </div>
    </div>
  </header>
</template>

<script setup lang="ts">
import { useRoute } from 'vue-router'
import { ref, watch } from 'vue'

const route = useRoute()
const isMenuOpen = ref(false)

// Cerrar el menú cuando cambia la ruta
watch(() => route.path, () => {
  isMenuOpen.value = false
})

const links = [
  { to: '/', label: 'Inicio' },
  { to: '/sobre-mi', label: 'Sobre Mí' },
  { to: '/curriculum', label: 'Curriculum' },
]
</script>

<style scoped>
.fixed {
  position: fixed;
}

.absolute {
  position: absolute;
}

.transform {
  transform: translateZ(0);
  backface-visibility: hidden;
  perspective: 1000px;
}

/* Asegurar que las transiciones sean suaves */
.transition-all {
  transition-property: all;
  transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
}

/* Animación específica para el menú */
.translate-x-full {
  transform: translateX(100%);
}

.translate-x-0 {
  transform: translateX(0);
}
</style>
