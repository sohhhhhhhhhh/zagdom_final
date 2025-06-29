<template>
    <nav class="breadcrumbs">
        <ul class="breadcrumbs__list">
            <li class="breadcrumbs__item">
                <NuxtLink to="/" class="breadcrumbs__link-main">Главная </NuxtLink>
            </li>
            <li v-for="(crumb, index) in breadcrumbs" :key="index" class="breadcrumbs__item">
                <span class="breadcrumbs__separator">/</span>
                <span class="breadcrumbs__current">{{ crumb }}</span>
            </li>
          </ul>
    </nav>
</template>

<script setup>
  const route = useRoute()

  const breadcrumbMap = {
      '/': 'Главная',
      '/news': 'Новости',
      '/contacts': 'Контакты'
  }

  const breadcrumbs = computed(() => {
      const path = route.path
      if (breadcrumbMap[path]) {
          return [breadcrumbMap[path]]
      }
  })
</script>

<style scoped>
    .breadcrumbs {
        font-family:var(--main-font);
        font-weight: 400;
        font-size: 20px;
        line-height: 135%;
    }

    .breadcrumbs__list {
        display: flex;
        flex-direction: row;
    }

    .breadcrumbs__item {
        color: #029F59;
    }

    .breadcrumbs__separator {
        margin: 0 8px;
        color: #666666;
    }

    .breadcrumbs__current{
        color: #666666;
    }

    .breadcrumbs__link-main{
        cursor: pointer;
    }

.block {
  @include ui-flex-align;
  background-color: var(--theme-accent);
  color: var(--theme-white);
  padding: 2rem;

  h2 {
    @include ui-heading;
  }

  p {
    @include ui-body-text;
    color: var(--theme-text-base);
  }
}
</style>

