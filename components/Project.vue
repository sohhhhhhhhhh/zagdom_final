<template>
    <div class='project__card'>
        <picture class="project__card-picture">
            <source
            :srcset="`${image_landscape.x2} 2x, ${image_landscape.x1}`"
            media="(min-width: 1189px)"
            >
            <source :srcset="`${image_portrait.x2} 2x, ${image_portrait.x1}`">
            <img :src="image_portrait.x1" :alt="title">
       </picture>
        <div class="project__card-info">
            <p class="project__card-title">{{title}}</p>
            <p class="project__card-text" v-html='text' />
       </div>
    </div>
 </template>

<style scoped lang="scss">
    .project__card{
        display: flex;
        flex-direction: row-reverse;
        background-color: #ffffff;
        border-radius: 20px;
        overflow: hidden;
        min-width: 304px;
        &-info{
            display: flex;
            flex-direction: column;
            gap: 12px;
            padding: 32px;
            padding-right: 16px;
            width: 50%;
        }
        &-title{
            font-family: var(--font);
            font-size: 20px;
            font-weight: 700;
            line-height: 120%;
            overflow-wrap: break-word;
        }
        &-text{
            font-family: var(--main-font);
            font-size: 16px;
            font-weight: 400;
            line-height: 135%;
            color: #666666;
            overflow-wrap: break-word;
        }

        &-picture{
            img{
                width: 100%;
                height: 100%;
            }
        }
    }

    @media(max-width: 1189px){
        .project__card{
            display: flex;
            flex-direction: column;
            min-width: 304px;
            &-info{
                width: 90%;
                padding: 24px;
            }
        }
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

<script setup>
    defineProps({
        image_landscape: {
            x1: String,
            x2: String,
        },
        image_portrait: {
            x1: String,
            x2: String,
        },
        title: String,
        text: String,
    })
</script>
 