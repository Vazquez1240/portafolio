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
              <p class="text-lg text-gray-500 dark:text-gray-400">Desarrollador Full-Stack | DevOps & Cloud</p>
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
              <div class="flex items-center gap-2">
                <Icon name="lucide:map-pin" class="h-4 w-4 text-gray-500" />
                <span>Monterrey, México</span>
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
              Desarrollador Full-Stack con experiencia construyendo aplicaciones web, APIs REST e infraestructura cloud para sectores público y
              privado. Stack principal: Python (FastAPI, Django), JavaScript/TypeScript (Vue 3, Nuxt, React), .NET 6, despliegue multi-cloud en
              AWS, Google Cloud y Microsoft Azure (Container Apps, Key Vault, NAT Gateway), pipelines CI/CD con Jenkins y GitHub Actions, y
              orquestación con Docker y Kubernetes (K3s). Especialización adicional en CCaaS (Zoom Contact Center), asistentes virtuales con IA
              e integración con HubSpot CRM. Enfocado en código limpio, despliegues sin interrupciones y soluciones escalables.
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
                <li>Español: Nativo</li>
                <li>Inglés: B1</li>
                <li>Italiano: A2</li>
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
              <h3 class="font-semibold text-lg mb-3">Lenguajes de Programación</h3>
              <div class="flex flex-wrap gap-2">
                <UBadge v-for="lang in habilidades.lenguajes" :key="lang" color="secondary" class="text-black" variant="soft">
                  {{ lang }}
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
              <h3 class="font-semibold text-lg mb-3">Cloud Providers</h3>
              <div class="flex flex-wrap gap-2">
                <UBadge v-for="c in habilidades.cloud" :key="c" color="secondary" class="text-black" variant="soft">
                  {{ c }}
                </UBadge>
              </div>
            </div>

            <div>
              <h3 class="font-semibold text-lg mb-3">DevOps</h3>
              <div class="flex flex-wrap gap-2">
                <UBadge v-for="d in habilidades.devops" :key="d" color="secondary" class="text-black" variant="soft">
                  {{ d }}
                </UBadge>
              </div>
            </div>

            <div>
              <h3 class="font-semibold text-lg mb-3">Bases de Datos</h3>
              <div class="flex flex-wrap gap-2">
                <UBadge v-for="db in habilidades.bases_de_datos" :key="db" color="secondary" class="text-black" variant="soft">
                  {{ db }}
                </UBadge>
              </div>
            </div>

            <div>
              <h3 class="font-semibold text-lg mb-3">Integraciones & APIs</h3>
              <div class="flex flex-wrap gap-2">
                <UBadge v-for="i in habilidades.integraciones" :key="i" color="secondary" class="text-black" variant="soft">
                  {{ i }}
                </UBadge>
              </div>
            </div>

            <div>
              <h3 class="font-semibold text-lg mb-3">Herramientas</h3>
              <div class="flex flex-wrap gap-2">
                <UBadge v-for="t in habilidades.herraminetas" :key="t" color="secondary" class="text-black" variant="soft">
                  {{ t }}
                </UBadge>
              </div>
            </div>

            <div>
              <h3 class="font-semibold text-lg mb-3">Sistemas Operativos</h3>
              <div class="flex flex-wrap gap-2">
                <UBadge v-for="so in habilidades.sistemas_operativos" :key="so" color="secondary" class="text-black" variant="soft">
                  {{ so }}
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
    titulo: 'Soporte Soluciones Colaboración · Desarrollador Full-Stack',
    empresa: 'Axtel',
    periodo: 'Septiembre 2025 – Actual',
    descripcion_general: 'Responsable de implementación, integración y soporte técnico de soluciones colaborativas para clientes enterprise, especializándome en automatización de contact center, asistentes virtuales y desarrollo de APIs.',
    descripcion: [
      'Implementación y configuración de Zoom Contact Center para clientes enterprise: diseño de flujos, enrutamiento de llamadas y administración de colas.',
      'Desarrollo de asistentes virtuales en Zoom Virtual Agent con scripts en JavaScript, manejo de variables globales, integración con APIs externas y lógica de escalamiento a agente humano.',
      'Diseño e implementación de campañas agentless dialer con listas de contactos dinámicas generadas desde CRM.',
      'Desarrollo de APIs REST con FastAPI y Python para automatización de procesos, integración entre plataformas y exposición de servicios internos.',
      'Integración de Zoom Contact Center con HubSpot CRM vía Webhooks y API REST para sincronización de leads, actualización de propiedades y seguimiento de actividad.',
      'Despliegue y administración de infraestructura cloud en Azure: Container Apps, Key Vault, NAT Gateway con IP fija de salida, Container Registry y redes virtuales.',
      'Diseño de arquitecturas con Docker y Kubernetes (K3s) para despliegues con alta disponibilidad y zero-downtime.'
    ]
  },
  {
    titulo: 'Desarrollador Full-Stack',
    empresa: 'Secretaría de Participación Ciudadana, Gobierno del Estado de Nuevo León',
    periodo: 'Febrero 2025 – Agosto 2025',
    descripcion_general: 'Mejora y mantenimiento de la plataforma 070, impulsando soluciones tecnológicas orientadas a la eficiencia y atención ciudadana.',
    descripcion: [
      'Desarrollo y mantenimiento del sistema 070, implementando mejoras orientadas a la robustez, rendimiento y estabilidad de la plataforma.',
      'Gestión de funciones críticas como carga masiva de archivos, corrección de bugs y refactorización de código, utilizando Vue.js en frontend y .NET 6 en backend.',
      'Aplicación de metodologías ágiles (Scrum) para mejorar la eficiencia, colaboración y calidad en el desarrollo de soluciones interactivas con JavaScript y TypeScript.',
      'Diseño e implementación desde cero de la arquitectura de servicios en Microsoft Azure: Container Apps, Application Gateway, NAT Gateway, Key Vault, Subnets y máquinas virtuales, integrando GitHub Actions y GitHub Container Registry.',
      'Implementación completa de pipelines CI/CD con Jenkins, Docker y Kubernetes, asegurando despliegues automatizados, seguros y sin interrupciones.'
    ]
  },
  {
    titulo: 'Analista de Desarrollo',
    empresa: 'Gobierno de Monterrey',
    periodo: 'Abril 2023 – Febrero 2025',
    descripcion_general: 'Coordinación del Área de Desarrollo en la Secretaría de Innovación y Gobierno Abierto del Municipio de Monterrey, liderando proyectos para optimizar procesos y mejorar la transparencia en los servicios públicos.',
    descripcion: [
      'Responsable del desarrollo de sistemas y aplicaciones web utilizando Python como lenguaje principal, junto con Django y Django REST Framework para la creación de APIs RESTful.',
      'Implementación y optimización de APIs REST para asegurar robustez, rendimiento y mantenibilidad.',
      'Gestión del mantenimiento y operatividad de aplicaciones basadas en Wagtail CMS.',
      'Desarrollo de interfaces de usuario con Vue.js y construcción de componentes utilizando Nuxt y Quasar.',
      'Creación de soluciones interactivas y dinámicas utilizando JavaScript y TypeScript.',
      'Aplicación de metodologías ágiles como Scrum para mejorar la eficiencia, colaboración y calidad en el desarrollo.',
      'Despliegue y operación de aplicaciones en Google Cloud Platform: Cloud Run para servicios containerizados, Cloud Storage para almacenamiento de archivos, Cloud SQL para bases de datos relacionales, Memorystore (Redis) para caché, Compute Engine (VMs) y diseño de redes con VPC.',
      'Elaboración de documentación técnica detallada y capacitación al equipo, fomentando la innovación y la mejora continua en el desarrollo de soluciones tecnológicas.'
    ]
  }
]

const educacion = [
  { titulo: 'Ingeniería en Desarrollo de Software', institucion: 'Universidad Da Vinci', periodo: '2022 - 2024' },
  { titulo: 'Desarrollador Frontend', institucion: 'Oracle One Next Education', periodo: '2023' },
  { titulo: 'Técnico en Programación', institucion: 'CBTIS No. 46', periodo: '2019 - 2022' }
]

const habilidades = {
  lenguajes: ['Python', 'JavaScript', 'TypeScript', 'C#', 'PHP'],
  frameworks: [
    'FastAPI', 'Django', 'Django REST Framework', 'Flask', '.NET 6', 'Laravel',
    'Vue 3', 'Nuxt.js', 'React', 'Next.js', 'Quasar', 'Vuetify', 'Material UI',
    'NuxtUI', 'HeroUI', 'PrimeVue', 'Leaflet', 'OpenStreetMap'
  ],
  cloud: [
    'AWS', 'Google Cloud (Cloud Run, Cloud Storage, Cloud SQL, Memorystore, Compute Engine, VPC)',
    'Microsoft Azure (Container Apps, Key Vault, NAT Gateway, Application Gateway)',
    'DigitalOcean', 'Vercel', 'Heroku', 'Railway', 'Firebase'
  ],
  devops: ['Docker', 'Kubernetes (K3s)', 'Jenkins', 'GitHub Actions', 'GitHub Container Registry'],
  bases_de_datos: ['PostgreSQL', 'MySQL', 'SQL Server', 'Redis', 'SQLAlchemy', 'Entity Framework Core'],
  integraciones: ['REST APIs', 'Webhooks', 'OAuth 2.0', 'HubSpot CRM', 'Zoom Contact Center', 'ngrok'],
  herraminetas: ['Git', 'Postman', 'Grafana'],
  sistemas_operativos: ['Ubuntu', 'macOS', 'Windows']
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
