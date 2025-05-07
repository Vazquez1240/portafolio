<template>
  <main class="flex-1">
    <!-- Hero Section -->
    <section class="py-16 md:py-24">
      <div class="container mx-auto px-2">
        <div class="grid grid-cols-1 md:grid-cols-2 gap-24  items-center">
          <div class="space-y-2 mt-0 md:mt-22">
            <div class="inline-flex items-center px-3 py-1 rounded-full bg-secondary/10 text-black text-sm">
              <span class="w-2 h-2 rounded-full bg-secondary mr-2"></span>
              Desarrollador de Software
            </div>

            <h1 class="text-4xl md:text-5xl font-bold leading-tight">
              Martín De La Torre
            </h1>

            <p class="text-lg text-muted-foreground">
              Desarrollador de software con {{yearsOfExperience}} años de experiencia en el desarrollo backend y frontend de
              aplicaciones, principalmente en el sector público y proyectos en la nube. Especializado en desarrollo
              de microservicios con Python, diseño de arquitecturas escalables y despliegue continuo en entornos
              cloud.
            </p>

            <div class="flex flex-col sm:flex-row gap-4 pt-4">
              <UButton
                  class="cursor-pointer transition-transform duration-400 transform hover:shadow-lg"
                  size="xl"
                  color="secondary">Contactar</UButton>
              <UButton
                  class="cursor-pointer transition-transform duration-400 transform hover:shadow-lg"
                  size="xl"
                  color="secondary"
                  variant="outline">Ver Proyectos</UButton>
            </div>
          </div>

          <div class="relative h-[400px] rounded-xl overflow-hidden">
            <NuxtImg
                src="https://cloud-images-mdtv.web.app/images/img-portafolio.png"
                alt="Foto de perfil"
                class="object-cover w-full h-full image-profile ml-10"
                sizes="(min-width: 768px) 400px"
                format="webp"
                loading="lazy"
            />
          </div>
        </div>
      </div>
    </section>
  </main>
</template>

<script setup lang="ts">
import { computed } from 'vue'

const startingYear = 2022
const now = new Date()

const yearsOfExperience = computed(() => {
  const baseYears = now.getFullYear() - startingYear
  return now.getMonth() >= 1 ? baseYears : baseYears - 1
})
</script>

<style scoped>
.image-profile {
  mask-image: linear-gradient(black 85%, transparent);
  filter: drop-shadow(0 0 10px rgba(0, 0, 0, 0.75));

}
</style>
