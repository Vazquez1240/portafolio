<template>
  <div class="flex flex-col min-h-screen">
    <ComponentHeader />
    <main class="flex-grow">
      <slot />
    </main>
    <ComponentFooter />
  </div>
</template>
<script setup lang="ts">
import ComponentFooter from "~/components/ComponentFooter.vue";
import ComponentHeader from "~/components/ComponentHeader.vue";

</script>
