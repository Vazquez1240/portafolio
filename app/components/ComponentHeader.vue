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
        <NuxtLink to="/"
          class="font-medium text-primary transition-all duration-300 hover:scale-110">
          Inicio
        </NuxtLink>
        <NuxtLink to="/proyectos"
          class="font-medium text-muted-foreground hover:text-primary transition-all duration-300 hover:scale-110">
          Proyectos
        </NuxtLink>
        <NuxtLink to="/sobre-mi"
          class="font-medium text-muted-foreground hover:text-primary transition-all duration-300 hover:scale-110">
          Sobre Mí
        </NuxtLink>
        <NuxtLink to="/curriculum"
          class="font-medium text-muted-foreground hover:text-primary transition-all duration-300 hover:scale-110">
          Curriculum
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
        <template #icon>
          <UButton icon="line-md:close-to-menu-alt-transition" />
        </template>
      </UButton>
    </UContainer>
  </header>
</template>

<script setup lang="ts">

</script>

