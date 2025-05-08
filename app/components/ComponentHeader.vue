<template>
  <header class="py-6 px-4">
    <UContainer class="flex justify-between items-center">
      <!-- Logo -->
      <div class="font-bold text-2xl">
        <NuxtLink to="/">portfolio</NuxtLink>
      </div>

      <!-- Navegación en desktop -->
      <nav class="hidden md:flex space-x-8">
        <NuxtLink to="/" class="font-medium text-primary">
          Inicio
        </NuxtLink>
        <NuxtLink to="/proyectos" class="font-medium text-muted-foreground hover:text-primary transition-colors">
          Proyectos
        </NuxtLink>
        <NuxtLink to="/sobre-mi" class="font-medium text-muted-foreground hover:text-primary transition-colors">
          Sobre Mí
        </NuxtLink>
        <NuxtLink to="/curriculum" class="font-medium text-muted-foreground hover:text-primary transition-colors">
          Curriculum
        </NuxtLink>
      </nav>

      <!-- Botón para menú móvil -->
      <UButton iconOnly variant="outline" class="md:hidden" aria-label="Abrir menú">
        <template #icon>
          <svg
              xmlns="http://www.w3.org/2000/svg"
              width="24"
              height="24"
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
          >
            <line x1="4" x2="20" y1="12" y2="12" />
            <line x1="4" x2="20" y1="6" y2="6" />
            <line x1="4" x2="20" y1="18" y2="18" />
          </svg>
        </template>
      </UButton>
    </UContainer>
  </header>
</template>

<script setup lang="ts">

</script>
