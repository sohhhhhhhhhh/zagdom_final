<template>
  <PaginationRoot v-model:page="currentPage" :total="10" :sibling-count="1" show-edges>
    <PaginationList class="PaginationList" v-slot="{ items }">
      <PaginationPrev class="button__prev" :style="{ marginRight: '16px' }">
        <Icon icon="radix-icons:chevron-left" />
      </PaginationPrev>

      <template v-for="(page, index) in items" :key="index">
        <PaginationListItem
          v-if="page.type === 'page'"
          :value="page.value"
          class="button__item"
        >
          {{ page.value }}
        </PaginationListItem>
        <PaginationEllipsis v-else class="PaginationEllipsis">
          &hellip;
        </PaginationEllipsis>
      </template>

      <PaginationNext class="button__next" :style="{ marginLeft: '16px' }">
        <Icon icon="radix-icons:chevron-right" />
      </PaginationNext>
    </PaginationList>
  </PaginationRoot>
</template>

<script setup>
import {
  PaginationRoot,
  PaginationList,
  PaginationListItem,
  PaginationPrev,
  PaginationNext,
  PaginationEllipsis
} from 'reka-ui'
import { Icon } from '@iconify/vue'
const currentPage = ref(1)
</script>

<style lang="scss" scoped>
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