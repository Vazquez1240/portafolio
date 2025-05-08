<template>
  <section class="container mx-auto py-16 px-4">
    <h2 class="text-3xl font-bold mb-12  ml-2">Mis habilidades</h2>

    <div class="grid grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
      <div class=" rounded-xl p-8 bg-card shadow-lg transition-transform duration-400 transform hover:-translate-y-1 hover:shadow-xl ">
        <div class="w-12 h-12 bg-secondary/10 rounded-full flex items-center justify-center mb-6">
          <Icon name="material-symbols-light:code-rounded" class="h-6 w-6 " />
        </div>
        <h3 class="text-xl font-semibold mb-3">Desarrollo Backend</h3>
        <p class="text-muted-foreground mb-4">
          Creación de APIs robustas y escalables utilizando Python con Django REST Framework, FastAPI y Flask. Diseño de
          arquitecturas de microservicios y bases de datos optimizadas.
        </p>
        <ul class="space-y-2 text-sm text-muted-foreground">
          <li>• Microservicios con Python</li>
          <li>• APIs REST</li>
          <li>• Bases de datos SQL y NoSQL</li>
          <li>• Arquitecturas escalables</li>
        </ul>
      </div>

      <div class=" rounded-xl p-8 bg-card shadow-lg transition-transform duration-400 transform hover:-translate-y-1 hover:shadow-xl ">
        <div class="w-12 h-12 bg-secondary/10 rounded-full flex items-center justify-center mb-6">
          <Icon name="pixelarticons:users" class="h-6 w-6" />
        </div>
        <h3 class="text-xl font-semibold mb-3">Desarrollo Frontend</h3>
        <p class="text-muted-foreground mb-4">
          Implementación de interfaces modernas y responsivas con React, Vue y frameworks como Next.js y Nuxt.js.
          Enfoque en experiencia de usuario y accesibilidad.
        </p>
        <ul class="space-y-2 text-sm text-muted-foreground">
          <li>• Aplicaciones SPA con React y Vue</li>
          <li>• Frameworks SSR/SSG</li>
          <li>• Diseño responsivo</li>
          <li>• Optimización de rendimiento</li>
          <li>• Aplicaciones PWA</li>
        </ul>
      </div>

      <div class=" rounded-xl p-8 bg-card shadow-lg transition-transform duration-400 transform hover:-translate-y-1 hover:shadow-xl ">
        <div class="w-12 h-12 bg-secondary/10 rounded-full flex items-center justify-center mb-6">
          <Icon name="streamline:industry-innovation-and-infrastructure" class="h-6 w-6 " />
        </div>
        <h3 class="text-xl font-semibold mb-3">DevOps & Cloud</h3>
        <p class="text-muted-foreground mb-4">
          Implementación de infraestructura como código, CI/CD y despliegue en entornos cloud como Google Cloud,
          AWS y Azure. Containerización con Docker.
        </p>
        <ul class="space-y-2 text-sm text-muted-foreground">
          <li>• Containerización con Docker</li>
          <li>• CI/CD con GitHub Actions</li>
          <li>• Despliegue en Google Cloud, AWS, Microsoft Azure, Heroku, DigitalOcean, Railway</li>
          <li>• Monitoreo y logging</li>
          <li>• Despligue de aplicaciones en Firebase.</li>
        </ul>
      </div>
    </div>
  </section>
</template>

<script setup lang="ts">

</script>
