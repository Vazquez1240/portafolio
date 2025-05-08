<template>
  <div class="group relative overflow-hidden rounded-xl shadow-lg transition-shadow p-5 shadow-lg transition-transform duration-400 transform hover:-translate-y-1 hover:shadow-xl">
    <div class="aspect-video w-full bg-muted relative">
      <NuxtImg
          class="absolute inset-0 object-cover w-full h-full rounded"
          format="webp"
          loading="lazy"
          :src="props.urlImg"
          alt="Imagen del proyecto"
      />
    </div>

    <div class="p-6">
      <div class="flex justify-between items-start mb-2">
        <h3 class="text-xl font-semibold">{{ props.titulo }}</h3>
      </div>

      <p class="text-muted-foreground mb-4">
        {{ props.descripcion }}
      </p>

      <div class="flex gap-2 flex-wrap">
        <UBadge
            v-for="(tech, index) in props.tecnologias"
            :key="index"
            variant="soft"
            color="secondary"
            class="text-sm text-back"
        >
          {{ tech.name }}
        </UBadge>
      </div>

      <div class="w-full mt-8">
        <NuxtLink :to="props.urlProject" target="_blank" rel="noopener">
          <UButton color="secondary" class="cursor-pointer">Ver en vivo</UButton>
        </NuxtLink>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
interface Tecnologias {
  name: string
}

const props = defineProps<{
  urlImg: string
  titulo: string
  descripcion: string
  tecnologias: Tecnologias[]
  urlProject: string
}>()
</script>
