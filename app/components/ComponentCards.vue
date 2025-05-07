<template>
  <div class="bg-background rounded-xl overflow-hidden shadow-xl p-6">
    <h3 class="text-xl font-semibold mb-4">{{props.titulo}}</h3>
    <div class="flex flex-wrap gap-2">
      <UBadge
          v-for="(tool, index) in tools"
          :key="index"
          :label="tool.name"
          color="secondary"
          variant="soft"
          class="text-black"
      />
    </div>
  </div>
</template>

<script setup lang="ts">
interface Tool {
  name: string
}
const props = defineProps<{
  tools: Tool[],
  titulo: string
}>()
</script>
