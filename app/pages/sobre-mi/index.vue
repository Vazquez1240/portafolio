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
              Mi interés por la tecnología comenzó desde pequeño, cuando me fascinaba abrir aparatos que ya no funcionaban solo para ver qué tenían dentro. Siempre me intrigó entender qué los hacía funcionar, cómo se conectaban sus partes, y qué pasaba cuando algo fallaba. Esa curiosidad, que en ese entonces era solo una forma de explorar el mundo, se convirtió con el tiempo en la base de mi vocación.
            </p>
            <p
              v-motion
              :initial="{ opacity: 0, y: 20 }"
              :enter="{ opacity: 1, y: 0 }"
              :delay="400">
              Fue en la preparatoria, como parte de mi carrera técnica, donde tuve mi primer contacto real con la programación. Al principio era un reto, pero pronto me di cuenta de que escribir código me hacía sentir algo diferente. Me gustaba pensar en lógica, buscar soluciones, ver cómo una idea se transformaba en algo que funcionaba en pantalla. Empecé a interesarme por cómo se construían las páginas web que usamos todos los días, y eso me llevó a aprender sobre desarrollo frontend.
            </p>
            <div  class="relative">
              <div
                ref="contentRef"
                class="overflow-hidden"
                :style="{ height: '0', opacity: 0 }"
              >

                <div class="py-4 flex flex-col gap-8">
                  <p
                    v-motion
                    :initial="{ opacity: 0, y: 20 }"
                    :enter="{ opacity: 1, y: 0 }"
                    :delay="600">
                    Con el tiempo descubrí Python, y fue un punto de quiebre: su claridad, versatilidad y comunidad me atraparon por completo. Me permitió ir más allá de la interfaz y entender mejor cómo funcionan las cosas detrás de escena. Así comencé a explorar el desarrollo backend, bases de datos, APIs y herramientas modernas como Docker. Hoy estoy aprendiendo sobre Kubernetes y prácticas de despliegue que me permiten llevar aplicaciones a producción de manera más robusta.
                  </p>
                  <p
                    v-motion
                    :initial="{ opacity: 0, y: 20 }"
                    :enter="{ opacity: 1, y: 0 }"
                    :delay="800">
                    Programar para mí no es solo una habilidad técnica, es una forma de crear, de pensar, de mejorar cosas. Me motiva resolver problemas reales, automatizar tareas tediosas, y construir soluciones útiles y elegantes. Disfruto cada etapa del proceso: desde investigar, escribir y depurar código, hasta ver cómo lo que construí ayuda a otros.
                  </p>
                  <p
                    v-motion
                    :initial="{ opacity: 0, y: 20 }"
                    :enter="{ opacity: 1, y: 0 }"
                    :delay="800">
                    Además de escribir código, me gusta aprender constantemente, ya sea explorando nuevas tecnologías, leyendo documentación, o contribuyendo en proyectos personales. También creo que mi entorno y mis intereses —como la historia, la ciencia y la tecnología— enriquecen mi manera de pensar como desarrollador.
                  </p>
                  <p
                    v-motion
                    :initial="{ opacity: 0, y: 20 }"
                    :enter="{ opacity: 1, y: 0 }"
                    :delay="800">
                    Hoy, con varios proyectos encima y muchas ganas de seguir creciendo, tengo claro que este camino apenas empieza. Me gusta lo que hago, me apasiona aprender y mejorar cada día, y sobre todo, me motiva saber que con cada línea de código puedo acercarme un poco más a crear algo significativo.
                  </p>
                </div>
              </div>
              <div class="h-12 flex items-center justify-center">
                <button
                  ref="buttonRef"
                  variant="outline"
                  color="neutral"
                  :style="{ transform: 'translateY(-8px)' }"
                  class="px-6 py-2 text-black rounded-lg cursor-pointer flex items-center gap-2"
                  @click="toggleContent"
                >
                  {{ showMore ? 'Ver menos' : 'Ver más' }}
                  <UIcon
                    :name="showMore ? 'i-lucide-chevron-up' : 'i-lucide-chevron-down'"
                    class="w-5 h-5 transition-transform text-black duration-500"
                    :class="showMore ? 'rotate-180' : ''"
                  />
                </button>
              </div>
            </div>
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
import { ref, onMounted } from 'vue'
import gsap from 'gsap'

const showMore = ref(false)
const contentRef = ref(null)
const buttonRef = ref(null)

const toggleContent = () => {
  showMore.value = !showMore.value

  if (showMore.value) {
    gsap.timeline()
      .to(contentRef.value, {
        height: 'auto',
        duration: 0.8,
        ease: 'power3.out'
      })
      .to(contentRef.value, {
        opacity: 1,
        duration: 0.4,
        ease: 'power2.out'
      }, '-=0.4')
      .to(buttonRef.value, {
        y: 0,
        duration: 0.8,
        ease: 'power3.out'
      }, '-=0.8')
  } else {
    gsap.timeline()
      .to(contentRef.value, {
        opacity: 0,
        duration: 0.4,
        ease: 'power2.in'
      })
      .to(contentRef.value, {
        height: 0,
        duration: 0.8,
        ease: 'power3.in'
      }, '-=0.2')
      .to(buttonRef.value, {
        y: -8,
        duration: 0.8,
        ease: 'power3.in'
      }, '-=0.8')
  }
}

const filosofia = [
  {
    icon: 'i-lucide-lightbulb',
    title: 'Simplicidad es clave',
    text: 'Creo que las mejores soluciones son las más simples. Me esfuerzo por escribir código limpio, mantenible y elegante que resuelva problemas complejos de manera sencilla.',
  },
  {
    icon: 'i-lucide-heart',
    title: 'Centrado en el usuario',
    text: 'La tecnología debe servir a las personas. Siempre pienso en quién usará lo que estoy creando y cómo puedo hacer su experiencia más intuitiva y agradable.',
  },
  {
    icon: 'i-lucide-globe',
    title: 'Impacto positivo',
    text: 'Aspiro a crear tecnología que tenga un impacto positivo en la sociedad. Me apasionan especialmente los proyectos que mejoran la vida de las personas o contribuyen al bien común.',
  },
]

const hobbies = [
  {
    icon: 'i-lucide-coffee',
    title: 'Amante de las películas',
    text: 'Cinéfilo apasionado con gusto por diversos géneros, desde el cine clásico hasta las producciones contemporáneas. El cine es una fuente de inspiración y una forma de explorar nuevas ideas.',
  },
  {
    icon: 'i-lucide-book',
    title: 'Amante de los videojuegos',
    text: 'Entusiasta de los videojuegos, especialmente aquellos con narrativas complejas y mecánicas innovadoras. Los videojuegos me han enseñado sobre diseño de experiencias y resolución de problemas.',
  },
  {
    icon: 'i-lucide-camera',
    title: 'Fotógrafo amateur',
    text: 'Me gusta capturar momentos y paisajes...',
  },
]

const proyectos = [
  {
    icon: 'material-symbols:local-convenience-store-outline-sharp',
    title: 'E-commerce',
    text: 'Esta sera una plataforma OpenSource, la cual se basara en diferentes modulos, un E-commerce muy completo, desarrollado con Wagatil y PrimeVue, la finalidad de este proyecto es poder ofrecerle al cliente un E-commerce completo desde el inicio.'
  },
  {
    icon: 'material-symbols:insert-chart-outline-sharp',
    title: 'Levantamiento de NexosoftDev',
    text: 'NexosoftDev es una startup de la cual yo soy CEO y Fundador, la idea de este proyecto es poder ofrecer a los clientes soluciones en tecnologia ampliamente grandes, con un equipo especializado desde el ux/ui hasta la parte de DevOps, tambien contar con un equipo de marketing.'
  },
  {
    icon: 'i-geo:turf-center',
    title: 'Nuevo Cliente para un Geoserver',
    text: 'Este proyecto es uno de los mas ambiciosos ya que esto ya existe y es la plataforma OpenSource de Geonode, pero tiene un poco sus desventajas las cuales son el codigo obsoleto que se quedo, la idea de este proyectos es recrearlo utilizando tecnologias como lo es Nuxt y su libreria de componentes NuxtUI.'
  }
]
</script>
