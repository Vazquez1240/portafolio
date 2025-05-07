<template>
  <div class="flex flex-col items-center h-screen ">
    <ComponentBanner /> <!--  Componente de banner donde se encuentra la imagen y la descripcion del inicio  -->
    <!-- <ComponentSkills /> -->
    <ComponentStrap />
  </div>
</template>

<script setup lang="ts">
import ComponentBanner from "~/components/ComponentBanner.vue";
// import ComponentSkills from "~/components/ComponentSkills.vue"
import ComponentStrap from "~/components/ComponentStrap.vue";

</script>
