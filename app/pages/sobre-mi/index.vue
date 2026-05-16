<template>
  <div class="min-h-screen flex flex-col">
    <section class="bg-gradient-to-b from-secondary-50 to-white py-20">
      <UContainer>
        <div class="flex flex-col md:flex-row items-center gap-12">
          <div
            v-motion
            :initial="{ opacity: 0, x: -50 }"
            :enter="{ opacity: 1, x: 0 }"
            class="md:w-1/2 relative w-full aspect-[4/3]">
            <div class="absolute -top-4 -left-4 w-24 h-24 border-t-4 border-l-4 border-secondary" />
            <div class="absolute -bottom-4 -right-4 w-24 h-24 border-b-4 border-r-4 border-secondary" />
            <div class="relative w-full h-full overflow-hidden rounded-xl shadow-md">
              <img
                  src="https://cloud-images-mdtv.web.app/images/img-portafolio.png"
                  alt="Foto de perfil"
                  class="object-cover w-full h-full"
              />
              <div class="absolute inset-0 bg-gradient-to-tr from-secondary/20 to-transparent opacity-60" />
            </div>
          </div>
          <div
            v-motion
            :initial="{ opacity: 0, x: 50 }"
            :enter="{ opacity: 1, x: 0 }"
            :delay="200"
            class="md:w-1/2 text-center md:text-left">
            <h1 class="text-4xl md:text-5xl font-bold mb-4">Hola, soy Martín ✌🏼</h1>
            <p class="text-xl text-gray-600">
              Desarrollador de software, entusiasta de la tecnología y amante de las nuevas aventuras. Cuando no estoy escribiendo código,
              me encontrarás explorando nuevas tecnologías o disfrutando de una buena lectura.
            </p>
          </div>
        </div>
      </UContainer>
    </section>

    <!-- Mi historia -->
    <section class="py-16 w-full">
      <UContainer class="w-full">
        <div
          v-motion
          :initial="{ opacity: 0, y: 50 }"
          :enter="{ opacity: 1, y: 0 }"
          class="w-full">
          <h2 class="text-3xl font-bold mb-8">Mi Historia</h2>
          <div class="prose w-full gap-8 flex flex-col text-xl">
            <p
              v-motion
              :initial="{ opacity: 0, y: 20 }"
              :enter="{ opacity: 1, y: 0 }"
              :delay="200">
              Mi camino en la tecnología empezó por curiosidad: de niño desarmaba aparatos solo para entender qué los hacía funcionar, cómo se conectaban sus partes y qué pasaba cuando algo fallaba. Esa misma inquietud me acompañó toda la adolescencia, primero como pasatiempo y después como una vocación clara — quería entender el mundo desde adentro, no solo usarlo.
            </p>
            <p
              v-motion
              :initial="{ opacity: 0, y: 20 }"
              :enter="{ opacity: 1, y: 0 }"
              :delay="400">
              En la preparatoria, como parte de una carrera técnica en programación, tuve mi primer contacto real con el código. Al principio era un reto enorme — la sintaxis, la lógica, los errores que no entendía — pero pronto descubrí que escribir código me hacía sentir algo distinto. Me gustaba pensar en lógica, transformar una idea en algo que funcionaba en pantalla y ver el mundo como un sistema de problemas resolubles. Eso me llevó a aprender desarrollo frontend y a construir mis primeros sitios web.
            </p>
            <p
              v-motion
              :initial="{ opacity: 0, y: 20 }"
              :enter="{ opacity: 1, y: 0 }"
              :delay="600">
              Más adelante descubrí Python, y fue un punto de quiebre. Su claridad, versatilidad y comunidad me atraparon por completo. Me permitió ir más allá de la interfaz y entender cómo funcionan las cosas detrás de escena: APIs, bases de datos, infraestructura, procesos asíncronos. Así me adentré en el desarrollo backend con Django y FastAPI, y empecé a pensar en el software como un sistema integral, no solo como una pantalla bonita.
            </p>
            <p
              v-motion
              :initial="{ opacity: 0, y: 20 }"
              :enter="{ opacity: 1, y: 0 }"
              :delay="800">
              Hoy soy Desarrollador Full-Stack con foco en Python (FastAPI, Django) y JavaScript/TypeScript (Vue 3, Nuxt, React), además de .NET 6. He construido aplicaciones web, APIs REST e infraestructura cloud para sector público y privado: desde sistemas de atención ciudadana en gobierno hasta plataformas de contact center y asistentes virtuales en el ámbito enterprise. En el camino aprendí a trabajar con AWS, Google Cloud y Azure, a diseñar pipelines CI/CD con Jenkins y GitHub Actions, y a orquestar despliegues con Docker y Kubernetes (K3s) buscando que las cosas escalen sin romperse.
            </p>
            <p
              v-motion
              :initial="{ opacity: 0, y: 20 }"
              :enter="{ opacity: 1, y: 0 }"
              :delay="1000">
              En paralelo, estoy levantando <a href="https://nexosoftdev.com" target="_blank" rel="noopener noreferrer" class="text-secondary font-medium hover:underline">NexosoftDev</a>, un proyecto personal con el que busco construir, poco a poco, una propuesta propia de soluciones tecnológicas integrales. Me motiva crear productos que ayuden a personas reales, automatizar lo tedioso y diseñar arquitecturas limpias que sigan teniendo sentido dos años después. No me veo solo escribiendo código: me veo aprendiendo constantemente, leyendo documentación, probando herramientas nuevas y entendiendo cómo aplicar la tecnología en contextos donde realmente puede cambiar algo. Apenas estoy en el inicio del camino, y eso es justamente lo que más me entusiasma.
            </p>
          </div>
        </div>
      </UContainer>
    </section>

    <!-- Filosofía de trabajo -->
    <section class="py-16 bg-gray-100">
      <UContainer>
        <div
          v-motion
          :initial="{ opacity: 0, y: 50 }"
          :enter="{ opacity: 1, y: 0 }"
          class="mx-auto">
          <h2 class="text-3xl font-bold mb-12 text-center">Mi Filosofía de Trabajo</h2>
          <div class="grid grid-cols-1 md:grid-cols-3 gap-12">
            <UCard
                v-for="(item, index) in filosofia"
                :key="index"
                v-motion
                :initial="{ opacity: 0, y: 20 }"
                :enter="{ opacity: 1, y: 0 }"
                :delay="200 * (index + 1)"
                class="hover:shadow-md transition-shadow"
            >
              <template #header>
                <div class="w-12 h-12 bg-secondary/10 rounded-full flex items-center justify-center">
                  <UIcon :name="item.icon" class="text-secondary w-6 h-6" />
                </div>
              </template>
              <h3 class="text-xl font-semibold mb-2">{{ item.title }}</h3>
              <p class="text-gray-600">{{ item.text }}</p>
            </UCard>
          </div>
        </div>
      </UContainer>
    </section>

    <!-- Más allá del código -->
    <section class="py-16">
      <UContainer>
        <div
          v-motion
          :initial="{ opacity: 0, y: 50 }"
          :enter="{ opacity: 1, y: 0 }"
          class="mx-auto">
          <h2 class="text-3xl font-bold mb-12 text-center">Más Allá del Código</h2>
          <div class="grid grid-cols-1 md:grid-cols-3 gap-6 text-center">
            <div
              v-for="(hobby, i) in hobbies"
              :key="i"
              v-motion
              :initial="{ opacity: 0, y: 20 }"
              :enter="{ opacity: 1, y: 0 }"
              :delay="200 * (i + 1)">
              <div class="w-16 h-16 bg-secondary/10 rounded-full flex items-center justify-center mx-auto mb-4">
                <UIcon :name="hobby.icon" class="text-secondary w-8 h-8" />
              </div>
              <h3 class="text-lg font-semibold mb-2">{{ hobby.title }}</h3>
              <p class="text-gray-600">{{ hobby.text }}</p>
            </div>
          </div>
        </div>
      </UContainer>
    </section>

    <!-- Proyectos Personales en curso -->
    <section class="py-16">
      <UContainer>
        <div
          v-motion
          :initial="{ opacity: 0, y: 50 }"
          :enter="{ opacity: 1, y: 0 }"
          class="mx-auto">
          <h2 class="text-3xl font-bold mb-12 text-center">Proyectos En Curso</h2>
          <div class="grid grid-cols-1 md:grid-cols-3 gap-12">
            <UCard
                v-for="(proyecto, index) in proyectos"
                :key="index"
                v-motion
                :initial="{ opacity: 0, y: 20 }"
                :enter="{ opacity: 1, y: 0 }"
                :delay="200 * (index + 1)"
                class="hover:shadow-md transition-shadow"
            >
              <template #header>
                <div class="w-12 h-12 bg-secondary/10 rounded-full flex items-center justify-center">
                  <UIcon :name="proyecto.icon" class="text-secondary w-6 h-6" />
                </div>
              </template>
              <h3 class="text-xl font-semibold mb-2">{{ proyecto.title }}</h3>
              <p class="text-gray-600">{{ proyecto.text }}</p>
              <a
                v-if="proyecto.url"
                :href="proyecto.url"
                target="_blank"
                rel="noopener noreferrer"
                class="mt-4 inline-flex items-center gap-1 text-secondary font-medium hover:underline">
                {{ proyecto.urlLabel || 'Visitar sitio' }}
                <UIcon name="i-lucide-arrow-up-right" class="w-4 h-4" />
              </a>
            </UCard>
          </div>
        </div>
      </UContainer>
    </section>

    <section
      v-motion
      :initial="{ opacity: 0, y: 50 }"
      :enter="{ opacity: 1, y: 0 }"
      class="py-20">
      <div class="container mx-auto px-4">
        <div class="max-w-3xl mx-auto text-center">
          <svg
              class="w-12 h-12 text-secondary/50 mx-auto mb-6"
              xmlns="http://www.w3.org/2000/svg"
              fill="currentColor"
              viewBox="0 0 24 24"
          >
            <path d="M14.017 21v-7.391c0-5.704 3.731-9.57 8.983-10.609l.995 2.151c-2.432.917-3.995 3.638-3.995 5.849h4v10h-9.983zm-14.017 0v-7.391c0-5.704 3.748-9.57 9-10.609l.996 2.151c-2.433.917-3.996 3.638-3.996 5.849h3.983v10h-9.983z" />
          </svg>
          <blockquote class="text-2xl font-medium italic mb-6">
            Make web development intuitive, performant and enjoyable. That's what Nuxt is all about.
          </blockquote>
          <p class="text-lg text-muted-foreground">— Sébastien Chopin, creador de Nuxt.js</p>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
const filosofia = [
  {
    icon: 'i-lucide-lightbulb',
    title: 'Simplicidad como principio',
    text: 'Las mejores soluciones suelen ser las más simples. Prefiero código limpio, modular y bien probado por encima de la sobreingeniería: arquitecturas claras que cualquier persona del equipo pueda leer, mantener y extender sin fricción.',
  },
  {
    icon: 'i-lucide-heart',
    title: 'Pensar en quien lo usa',
    text: 'La tecnología existe para servir a las personas. Antes de escribir una línea pienso a quién va dirigida y cómo hacer que su experiencia sea más intuitiva, accesible y eficiente, ya sea un usuario final, un cliente interno o un compañero developer.',
  },
  {
    icon: 'i-lucide-globe',
    title: 'Construir con impacto',
    text: 'Aspiro a desarrollar tecnología con impacto real. Me motivan los proyectos que optimizan procesos del sector público, automatizan operaciones internas y aportan valor concreto a la vida de las personas y comunidades a las que sirven.',
  },
]

const hobbies = [
  {
    icon: 'i-material-symbols:movie-edit-outline-sharp',
    title: 'Amante de las películas',
    text: 'Cinéfilo apasionado con gusto por diversos géneros, desde el cine clásico hasta las producciones contemporáneas. El cine es una fuente de inspiración y una forma de explorar nuevas ideas.',
  },
  {
    icon: 'i-material-symbols:videogame-asset-outline-rounded',
    title: 'Amante de los videojuegos',
    text: 'Entusiasta de los videojuegos, especialmente aquellos con narrativas complejas y mecánicas innovadoras. Los videojuegos me han enseñado sobre diseño de experiencias y resolución de problemas.',
  },
  {
    icon: 'i-lucide-languages',
    title: 'Aprendiendo italiano',
    text: 'Estoy estudiando italiano por gusto y curiosidad cultural. Aprender un nuevo idioma me ayuda a conectar con otras formas de pensar, ampliar mi vocabulario y entrenar la disciplina que también aplico al programar.'
  },
]

const proyectos = [
  {
    icon: 'material-symbols:local-convenience-store-outline-sharp',
    title: 'E-commerce',
    text: 'Plataforma OpenSource de E-commerce construida sobre una arquitectura modular, con Django REST Framework en el backend y NuxtUI en el frontend. Incluye módulos de catálogo, carrito, pasarela de pagos, gestión de inventario y panel administrativo. El objetivo es entregar al cliente una tienda en línea completa, escalable y lista para producción desde el primer día, sin partir desde cero.'
  },
  {
    icon: 'material-symbols:insert-chart-outline-sharp',
    title: 'Levantamiento de NexosoftDev',
    text: 'NexosoftDev es el proyecto personal que estoy levantando con la idea de convertirlo, con el tiempo, en una propuesta propia de soluciones tecnológicas integrales. Por ahora soy una sola persona detrás de la marca, definiendo la visión y las primeras piezas que abarcarán desde UX/UI hasta DevOps. El objetivo es hacerlo crecer paso a paso, sumar talento y abrir las puertas a los primeros clientes.',
    url: 'https://nexosoftdev.com',
    urlLabel: 'nexosoftdev.com'
  },
  {
    icon: 'i-lucide-calendar-check',
    title: 'Sistema de Gestión de Citas',
    text: 'SaaS multi-tenant de agendamiento médico construido con Django REST Framework y un monorepo Nuxt 4 + NuxtUI. Cada clínica o doctor independiente cuenta con su propio subdominio (sitio público de reservas, panel admin y portal médico), respaldado por un panel central de plataforma para gestionar tenants, planes y suscripciones. Integra PostgreSQL, Redis, Celery y sugerencias con IA vía Ollama.'
  }
]
</script>
