<template>
  <section class="bg-muted py-16 w-full">
    <div class="container mx-auto px-4">
      <div class="grid grid-cols-2 md:grid-cols-3 gap-8 text-center">
        <div 
          v-motion
          :initial="{ opacity: 0, y: 50 }"
          :enter="{ opacity: 1, y: 0 }"
          :delay="200"
          class="space-y-2">
          <p class="text-4xl font-bold text-secondary">
            <span v-motion-roll-visible="{ items: 3 }">4</span>+
          </p>
          <p class="text-muted-foreground">Años de experiencia</p>
        </div>

        <div 
          v-motion
          :initial="{ opacity: 0, y: 50 }"
          :enter="{ opacity: 1, y: 0 }"
          :delay="400"
          class="space-y-2">
          <p class="text-4xl font-bold text-secondary">
            <span v-motion-roll-visible="{ items: 10 }">10</span>+
          </p>
          <p class="text-muted-foreground">Proyectos completados</p>
        </div>

        <div 
          v-motion
          :initial="{ opacity: 0, y: 50 }"
          :enter="{ opacity: 1, y: 0 }"
          :delay="600"
          class="space-y-2">
          <p class="text-4xl font-bold text-secondary">
            <span v-motion-roll-visible="{ items: 3 }">3</span>+
          </p>
          <p class="text-muted-foreground">Certificaciones</p>
        </div>
      </div>
    </div>
  </section>
</template>
<script setup lang="ts">
</script>
