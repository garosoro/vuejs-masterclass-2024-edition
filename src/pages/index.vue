<template>
  <div>
    <h1>Home page</h1>
    <RouterLink :to="{ name: '/projects/[id]', params: { id: 1 } }">Projects</RouterLink>
  </div>
</template>

<script setup lang="ts">

</script>

<style scoped></style>
