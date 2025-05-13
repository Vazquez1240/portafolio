<template>
  <div class="flex flex-col items-center">
    <ComponentBanner /> <!--  Componente de banner donde se encuentra la imagen y la descripcion del inicio  -->
    <!-- <ComponentSkills /> -->
    <ComponentStrap />
    <WhatIDoComponent />
    <div>
      <div class="w-full justify-center">
        <h2 class="text-3xl font-bold mb-12 ml-4">Mis Proyectos Destacados</h2>
      </div>
      <div class=" container grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 mx-auto px-4">
        <ComponentProject
            v-for="proyecto in proyectos"
            :key="proyecto.titulo"
            :urlImg="proyecto.urlImg"
            :titulo="proyecto.titulo"
            :descripcion="proyecto.descripcion"
            :tecnologias="proyecto.tecnologias"
            :urlProject="proyecto.urlProject"
        />
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import ComponentBanner from "~/components/ComponentBanner.vue";
// import ComponentSkills from "~/components/ComponentSkills.vue"
import ComponentStrap from "~/components/ComponentStrap.vue";
import WhatIDoComponent from "~/components/WhatIDoComponent.vue";
import ComponentProject from "~/components/ComponentProject.vue";

const proyectos = [
  {
    urlImg: "https:///cloud-images-mdtv.web.app/images/projects/idmty.png",
    titulo: "ID Digital Mty+",
    descripcion:
        "Sistema de autenticación digital que centraliza el acceso a los servicios del Municipio de Monterrey, permitiendo a ciudadanos y empresas identificarse de forma segura y acceder con una sola cuenta a trámites y plataformas municipales.",
    tecnologias: [
      { name: "Django REST" },
      { name: "Nuxt.Js" },
      { name: "Vuetify" },
      { name: "Keycloak" },
      { name: "GCP" },
      { name: "Firebase" },
      { name: "PostgreSQL" },
    ],
    urlProject: "https://id.monterrey.gob.mx/"
  },
  {
    urlImg: "https:///cloud-images-mdtv.web.app/images/projects/monterreygob.png",
    titulo: "Sitio Web del Municipio de Monterrey",
    descripcion:
        "Plataforma CMS que facilita la gestión y publicación de noticias, eventos y formularios, mejorando la comunicación e interacción entre los funcionarios y los ciudadanos, promoviendo la transparencia y la interacción con la comunidad..",
    tecnologias: [
      { name: "Django REST" },
      { name: "Wagtail" },
      { name: "Vue 3" },
      { name: "Quasar" },
      { name: "GCP" },
      { name: "Firebase" },
      { name: "PostgreSQL" },
    ],
    urlProject: "https://www.monterrey.gob.mx/"
  },
  {
    urlImg: "https:///cloud-images-mdtv.web.app/images/projects/miramty.png",
    titulo: "Mira+",
    descripcion:
        "Visualizador geoespacial que proporciona acceso unificado a los datos del Municipio de Monterrey, permitiendo a los ciudadanos interactuar de manera sencilla y accesible con la información geoespacial, facilitando su consulta y análisis en un entorno integral.",
    tecnologias: [
      { name: "OpenStreetMap" },
      { name: "Geonode" },
      { name: "Vue 3" },
      { name: "Quasar" },
      { name: "Firebase" },
    ],
    urlProject: "https://transparenciaproactiva.monterrey.gob.mx/explora"
  }
]


</script>
