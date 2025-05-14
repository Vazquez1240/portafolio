<template>
  <div class="min-h-screen flex flex-col">
    <main class="flex-1 container mx-auto py-16 px-4">
      <div class="max-w-4xl mx-auto">
        <div
            v-motion
            :initial="{ opacity: 0, y: 20 }"
            :enter="{ opacity: 1, y: 0 }"
            class="flex justify-end items-start mb-8">
          <a
              href="https://cloud-images-mdtv.web.app/documents/MartinDeLaTorreVazquez_CV.pdf"
              download="MartinDeLaTorreVazquez_CV.pdf"
              target="_blank"
              rel="noopener noreferrer"
          >
            <UButton color="secondary" variant="outline" class="gap-2 cursor-pointer">
              <Icon name="lucide:download" class="h-4 w-4" />
              Descargar CV
            </UButton>
          </a>
        </div>

        <!--    SECCION DE MI INFORMACIÓN -->
        <section
          v-motion
          :initial="{ opacity: 0, y: 20 }"
          :enter="{ opacity: 1, y: 0 }"
          :delay="200"
          class="bg-white dark:bg-gray-900 rounded-xl p-8 mb-8 shadow-lg transition-transform duration-400 transform hover:-translate-y-1 hover:shadow-xl">
          <div class="flex flex-col md:flex-row justify-between gap-4 mb-6">
            <div
              v-motion
              :initial="{ opacity: 0, x: -20 }"
              :enter="{ opacity: 1, x: 0 }"
              :delay="400">
              <h2 class="text-2xl font-bold">Martín De La Torre Vázquez</h2>
              <p class="text-lg text-gray-500 dark:text-gray-400">Desarrollador de software</p>
            </div>
            <div
              v-motion
              :initial="{ opacity: 0, x: 20 }"
              :enter="{ opacity: 1, x: 0 }"
              :delay="400"
              class="space-y-1 text-sm">
              <div class="flex items-center gap-2">
                <Icon name="lucide:phone" class="h-4 w-4 text-gray-500" />
                <span>(+52) 481 123 2663</span>
              </div>
              <div class="flex items-center gap-2">
                <Icon name="lucide:mail" class="h-4 w-4 text-gray-500" />
                <span>vazquezmartin1240@gmail.com</span>
              </div>
              <div class="flex items-center gap-2">
                <Icon name="lucide:linkedin" class="h-4 w-4 text-gray-500" />
                <span>linkedin.com/in/martindtv/</span>
              </div>
            </div>
          </div>

          <div
            v-motion
            :initial="{ opacity: 0, y: 20 }"
            :enter="{ opacity: 1, y: 0 }"
            :delay="600"
            class="border-t pt-6 mb-6">
            <p class="text-lg text-gray-700 dark:text-gray-300" style="text-align: justify">
              Desarrollador de software con experiencia en diseño e implementación de arquitecturas cloud y APIs escalables. Con experiencia en
              Python y tecnologías de contenedores con conocimientos en despliegue de aplicaciones en entornos de nube como GCP, AWS y Azure.
              Enfocado en la automatización de procesos, mejora continua y optimización de sistemas mediante metodologías ágiles
            </p>
          </div>

          <div
            v-motion
            :initial="{ opacity: 0, y: 20 }"
            :enter="{ opacity: 1, y: 0 }"
            :delay="800"
            class="grid grid-cols-1 md:grid-cols-4 gap-4">
            <div class="md:col-span-1">
              <h3 class="font-semibold text-lg">Idiomas</h3>
              <ul class="mt-2 space-y-1 text-gray-500 dark:text-gray-400">
                <li>Inglés: B1</li>
                <li>Español: Nativo</li>
              </ul>
            </div>
          </div>
        </section>

        <!-- EXPERIENCIA -->
        <section class="bg-white dark:bg-gray-900 rounded-xl p-8 mb-8 shadow-lg transition-transform duration-400 transform hover:-translate-y-1 hover:shadow-xl">
          <h2 class="text-2xl font-bold mb-6">Experiencia Profesional</h2>

          <div class="space-y-8">
            <div
                v-for="(exp, index) in experiencia"
                :key="index"
                class="border-l-4 border-secondary pl-6 relative mb-8 experience-item"
                :style="{ '--i': index }">
              <div class="absolute w-3 h-3 bg-secondary rounded-full -left-[6.5px] top-1.5"></div>
              <div class="mb-2">
                <h3 class="text-xl font-semibold" style="text-align: justify">{{ exp.titulo }}</h3>
                <div class="flex justify-between text-sm text-gray-500">
                  <p>{{ exp.empresa }}</p>
                  <p>{{ exp.periodo }}</p>
                </div>
              </div>
              <p class="mb-3">{{exp.descripcion_general}}</p>
              <ul class="list-disc ml-3 list-inside space-y-2 text-gray-500 dark:text-gray-400">
                <li v-for="(item, i) in exp.descripcion" :key="i">{{ item }}</li>
              </ul>
            </div>
          </div>
        </section>

        <!-- EDUCACIÓN -->
        <section
          v-motion
          :initial="{ opacity: 0, y: 20 }"
          :enter="{ opacity: 1, y: 0 }"
          :delay="2000"
          class="bg-white dark:bg-gray-900 shadow-lg transition-transform duration-400 transform hover:-translate-y-1 hover:shadow-xl rounded-xl p-8 mb-8">
          <h2
            v-motion
            :initial="{ opacity: 0, y: -20 }"
            :enter="{ opacity: 1, y: 0 }"
            :delay="2200"
            class="text-2xl font-bold mb-6">Educación</h2>

          <div class="space-y-6">
            <div
                v-for="(edu, index) in educacion"
                :key="index"
                v-motion
                :initial="{ opacity: 0, x: -20 }"
                :enter="{ opacity: 1, x: 0 }"
                :delay="2400 + (index * 200)"
                class="border-l-4 border-secondary pl-6 relative">
              <div class="absolute w-3 h-3 bg-secondary rounded-full -left-[6.5px] top-1.5"></div>
              <div>
                <h3 class="text-xl font-semibold">{{ edu.titulo }}</h3>
                <div class="flex justify-between text-sm text-gray-500">
                  <p>{{ edu.institucion }}</p>
                  <p>{{ edu.periodo }}</p>
                </div>
              </div>
            </div>
          </div>
        </section>

        <!-- HABILIDADES -->
        <section
          v-motion
          :initial="{ opacity: 0, y: 20 }"
          :enter="{ opacity: 1, y: 0 }"
          :delay="3000"
          class="bg-white dark:bg-gray-900 shadow-lg transition-transform duration-400 transform hover:-translate-y-1 hover:shadow-xl rounded-xl p-8">
          <h2
            v-motion
            :initial="{ opacity: 0, y: -20 }"
            :enter="{ opacity: 1, y: 0 }"
            :delay="3200"
            class="text-2xl font-bold mb-6">Habilidades Técnicas</h2>

          <div
            v-motion
            :initial="{ opacity: 0, y: 20 }"
            :enter="{ opacity: 1, y: 0 }"
            :delay="3400"
            class="grid grid-cols-1 md:grid-cols-2 gap-6">

            <div>
              <h3 class="font-semibold text-lg mb-3">Herramientas y Tecnologías</h3>
              <div class="flex flex-wrap gap-2">
                <UBadge v-for="fw in habilidades.herraminetas" :key="fw" color="secondary" class="text-black" variant="soft">
                  {{ fw }}
                </UBadge>
              </div>
            </div>

            <div>
              <h3 class="font-semibold text-lg mb-3">Frameworks y Bibliotecas</h3>
              <div class="flex flex-wrap gap-2">
                <UBadge v-for="fw in habilidades.frameworks" :key="fw" color="secondary" class="text-black" variant="soft">
                  {{ fw }}
                </UBadge>
              </div>
            </div>

            <div>
              <h3 class="font-semibold text-lg mb-3">Lenguajes de Programación</h3>
              <div class="flex flex-wrap gap-2">
                <UBadge v-for="lang in habilidades.lenguajes" :key="lang" color="secondary" class="text-black" variant="soft">
                  {{ lang }}
                </UBadge>
              </div>
            </div>

            <div>
              <h3 class="font-semibold text-lg mb-3">Sistemas Operativos</h3>
              <div class="flex flex-wrap gap-2">
                <UBadge v-for="lang in habilidades.sistemas_operativos" :key="lang" color="secondary" class="text-black" variant="soft">
                  {{ lang }}
                </UBadge>
              </div>
            </div>

          </div>
        </section>
      </div>
    </main>
  </div>
</template>

<script setup>
import { onMounted } from 'vue';

const experiencia = [
  {
    titulo: 'Analista de desarrollo',
    empresa: 'Gobierno de Monterrey',
    periodo: 'Noviembre 2023 - Actualidad',
    descripcion_general: 'Encargado de la coordinación del Área de Desarrollo en la Secretaría de Innovación y Gobierno Abierto del Municipio de Monterrey, Nuevo León, liderando proyectos para optimizar procesos y mejorar la transparencia en los servicios públicos.',
    descripcion: [
      'Diseño e implementación de arquitecturas de microservicios con Python, Django REST Framework y Docker, garantizando\n' +
      'escalabilidad y alto rendimiento.',
      'Desarrollo de APIs robustas para el procesamiento y análisis de datos municipales, utilizando principios RESTful y autenticación\n' +
      'segura.',
      'Despliegue y gestión de aplicaciones en Google Cloud Run, optimizando costos y recursos mediante estrategias de autoescalado.',
      'Implementación de pipelines de integración continua para automatizar el despliegue de aplicaciones, reduciendo en un 40% los\n' +
      'tiempos de lanzamiento.',
      'Diseño y mantenimiento de bases de datos PostgreSQL, asegurando integridad y eficiencia en el almacenamiento de datos críticos.',
      'Elaboración de documentación técnica y manuales de infraestructura para transferencia de conocimiento al equipo.',
      'Aplicación de metodologías ágiles (Scrum), participando en planning, refinamientos y retrospectivas.',

    ]
  },
  {
    titulo: 'Practicante',
    empresa: 'USAER No.20',
    periodo: 'Mayo 2022 – Mayo 2023',
    descripcion_general: 'Liderazgo en el desarrollo de un sistema de gestión de alumnos, con enfoque en API robusta y frontend optimizado.',
    descripcion: [
      'Diseño e implementación de una API con Django REST Framework, estableciendo la arquitectura backend para un sistema de\n' + 'gestión de datos de alumnos.',
      'Contenerización con Docker para garantizar entornos de desarrollo consistentes y despliegues reproducibles.',
      'Creación del frontend con React, implementando visualizaciones interactivas de datos para facilitar análisis estadísticos.',
      'Configuración de entornos Linux para alojamiento de servicios y optimización de seguridad del sistema.'
    ]
  }
]

const educacion = [
  { titulo: 'Ingeniería en desarrollo de software', institucion: 'Universidad Davinci', periodo: '2022 - 2024' },
  { titulo: 'Desarrollador Python', institucion: 'Tokio School', periodo: '2021 - 2022' },
  { titulo: 'Desarrollador Frontend', institucion: 'Oracle One Next Education', periodo: '2023 - 2023' },
  { titulo: 'Técnico en programación', institucion: 'CBTIS No.46', periodo: '2019 - 2022' }
]

const habilidades = {
  lenguajes: ['Python', 'JavaScript', 'TypeScript'],
  frameworks: ['Django REST Framework', 'FastAPI', 'Flask', 'React', 'Vue', 'Next.js', 'Nuxt.js', 'Vuetify', 'Quasar', 'Material UI',
  'NuxtUI', 'HerouUi', 'PrimeVue', 'Leaflet', 'OpenStreetMap'],
  herraminetas: [ 'Docker', 'Git', 'MySQL', 'PostgreSQL', 'SQLAlchemy', 'Postman', 'Google Cloud', 'AWS', 'Microsoft Azure', 'Firebase',
  'Heroku', 'DigitalOcean', 'Vercel', 'Railway' ],
  sistemas_operativos: [ 'Ubuntu', 'MacOS', 'Windows' ]
}

onMounted(() => {
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('visible');
      }
    });
  }, {
    threshold: 0.1
  });

  document.querySelectorAll('.experience-item').forEach((item) => {
    observer.observe(item);
  });
});
</script>

<style>
.experience-item {
  opacity: 0;
  transform: translateY(20px);
  transition: all 0.5s ease;
}

.experience-item.visible {
  opacity: 1;
  transform: translateY(0);
}
</style>
