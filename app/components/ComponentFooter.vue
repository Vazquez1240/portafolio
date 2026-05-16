<template>
  <footer class="w-full py-6 border-gray-200 bg-white/80 backdrop-blur-sm">
    <div class="max-w-6xl mx-auto">
      <div class="flex flex-col md:flex-row justify-between items-center gap-4">
        <!-- Copyright -->
        <div class="text-gray-600 text-sm">
          © {{ currentYear }} Martin de la torre vázquez
        </div>

        <!-- Social Links -->
        <div class="flex items-center gap-6">
          <a href="https://github.com/martindtv"
             target="_blank"
             rel="noopener noreferrer"
             aria-label="GitHub"
             class="group relative">
            <Icon name="mdi:github-face"
                  class="h-5 w-5 text-gray-600 transition-all duration-300
                         group-hover:text-blue-600 group-hover:scale-125
                         group-hover:-translate-y-1 group-hover:rotate-6" />
            <span class="absolute -bottom-1 left-1/2 w-0 h-0.5 bg-blue-600
                       transition-all duration-300 group-hover:w-full group-hover:left-0"></span>
          </a>
          <a href="https://www.linkedin.com/in/martindtv/"
             target="_blank"
             rel="noopener noreferrer"
             aria-label="LinkedIn"
             class="group relative">
            <Icon name="mdi:linkedin"
                  class="h-5 w-5 text-gray-600 transition-all duration-300
                         group-hover:text-blue-600 group-hover:scale-125
                         group-hover:-translate-y-1 group-hover:-rotate-6" />
            <span class="absolute -bottom-1 left-1/2 w-0 h-0.5 bg-blue-600
                       transition-all duration-300 group-hover:w-full group-hover:left-0"></span>
          </a>
          <a href="https://x.com/Martin1240_"
             target="_blank"
             rel="noopener noreferrer"
             aria-label="Twitter"
             class="group relative">
            <Icon name="hugeicons:new-twitter"
                  class="h-5 w-5 text-gray-600 transition-all duration-300
                         group-hover:text-blue-600 group-hover:scale-125
                         group-hover:-translate-y-1 group-hover:rotate-6" />
            <span class="absolute -bottom-1 left-1/2 w-0 h-0.5 bg-blue-600
                       transition-all duration-300 group-hover:w-full group-hover:left-0"></span>
          </a>
          <a href="mailto:contacto@martindtv.dev"
             aria-label="Email"
             class="group relative">
            <Icon name="mdi:email"
                  class="h-5 w-5 text-gray-600 transition-all duration-300
                         group-hover:text-blue-600 group-hover:scale-125
                         group-hover:-translate-y-1 group-hover:-rotate-6" />
            <span class="absolute -bottom-1 left-1/2 w-0 h-0.5 bg-blue-600
                       transition-all duration-300 group-hover:w-full group-hover:left-0"></span>
          </a>
          <a href="https://nexosoftdev.com"
             target="_blank"
             rel="noopener noreferrer"
             aria-label="NexosoftDev"
             class="group relative">
            <Icon name="mdi:web"
                  class="h-5 w-5 text-gray-600 transition-all duration-300
                         group-hover:text-blue-600 group-hover:scale-125
                         group-hover:-translate-y-1 group-hover:rotate-6" />
            <span class="absolute -bottom-1 left-1/2 w-0 h-0.5 bg-blue-600
                       transition-all duration-300 group-hover:w-full group-hover:left-0"></span>
          </a>
        </div>

        <!-- Credits -->
        <div class="text-gray-600 text-sm">
          Realizado con <a href="https://ui.nuxt.com/" target="_blank">NuxtUI</a>
        </div>
      </div>
    </div>
  </footer>
</template>

<script setup lang="ts">
const currentYear = new Date().getFullYear()
</script>
