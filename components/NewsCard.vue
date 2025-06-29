<template>
    <div class="news__card">
        <picture class="news__card-picture">
            <source
            :srcset="`${image.x2} 2x, ${image.x1}`"
            >
            <img :src="image.x1" :alt="title">
        </picture>
        <div class="news__card-info">
            <p class="news__card-date">{{date}}</p>
            <p class="news__card-title">{{title}}</p>
            <p class="news__card-text">{{text}}</p>
        </div>

    </div>
</template>

<style scoped lang="scss">
    .news__card{
        border-top-left-radius: 20px;
        border-top-right-radius: 20px;
        overflow: hidden;
        min-width: 304px;
        &-date{
            margin: 16px 0;
            font-family: var(--font);
            font-size: 14px;
            font-weight: 400;
            line-height: 120%;
        }
        &-title{
            margin-bottom: 8px;
            font-family: var(--font);
            font-size: 20px;
            font-weight: 700;
            line-height: 120%;
        }
        &-text{
            font-family: var(--main-font);
            font-size: 16px;
            font-weight: 400;
            line-height: 120%;
            color: #666666;
        }
        &-picture{
            img{
                width: 100%;
                height: auto;
            }
        }
    }

    @media(max-width: 824px){
        .news__card{
            min-width: 344px;
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
        image: {
            x1: String,
            x2: String,
        },
        date: String,
        title: String,
        text: String,
    })
</script>