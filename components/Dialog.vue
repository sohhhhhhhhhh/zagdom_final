<script setup lang="ts">
import { Icon } from '@iconify/vue'
import {
  DialogClose,
  DialogContent,
  DialogDescription,
  DialogOverlay,
  DialogPortal,
  DialogRoot,
  DialogTitle,
} from 'reka-ui'
const props = defineProps({
  open: Boolean
})
import Form from "~/components/Form.vue"
const emit = defineEmits(['update:open', 'close'])
</script>

<template>
  
  <DialogRoot  :open="open" @update:open="$emit('update:open', $event)">
    <DialogPortal>
      <DialogOverlay class="DialogOverlay"/>
      <DialogContent class="DialogContent">
        <DialogTitle class="DialogTitle">    </DialogTitle>
        <DialogDescription class="DialogDescription">
          
        </DialogDescription>
        <Form />
        <div class="mt-[25px] flex justify-end">
          <DialogClose as-child >
          </DialogClose>
        </div>

        <DialogClose class="IconButton" aria-label="Close" @click="emit('update:open', false)">
          <Icon icon="lucide:x" />
        </DialogClose>
      </DialogContent>
    </DialogPortal>
  </DialogRoot>
</template>



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