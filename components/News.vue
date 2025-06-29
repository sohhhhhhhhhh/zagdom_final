<template>
    <div class="news">
        <div class="news__header">
            <div class="news__header-title">
                Новости
            </div>
            <button class="news__header-button">
                Все новости
            </button>
        </div>
        <div class="news__cards">
            <NewsCard v-for="card in newsData"
            :key="card.id" 
            :title='card.title'
            :text='card.text'
            :image='card.image'
            :date='card.date'/>
        </div>
    </div>
</template>

<style scoped lang="scss">
    .news{
        padding-top: 80px;
        padding-bottom: 60px;
        &__header{
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 32px;
            &-title{
                font-family: var(--font);
                font-size: 38px;
                font-weight: 700;
                line-height: 120%;
            }
            &-button{
                color: #029F59;
                border: #029F59 solid 1px;
                background-color: #ffffff;
                font-family: var(--font);
                font-size: 14px;
                font-weight: 600;
                border-radius: 10px;
                padding: 16px 24px;
            }
        }
    }

    .news__cards{
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        overflow: auto;
        column-gap: 16px;
    }

    @media(max-width: 824px){
        .news{
            padding-top: 60;
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
    import { newsData } from '~/assets/mock.js'
    import NewsCard from './NewsCard.vue';
</script>