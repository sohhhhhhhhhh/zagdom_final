<template>
    <header class = "header">
        <div class="site-nav__container _container">
            <div class="site-nav__block-one">
                <img class="site-nav__logo" src="\img\header_logo.svg" alt="Логотип">
                <nav class="site-nav__menu">
                    <a href="#" class="site-nav__menu-item">Реализованные проекты</a>
                    <NuxtLink to='/news' class="site-nav__menu-item" active-class="site-nav__menu-item-active">Новости</NuxtLink>
                    <NuxtLink to='/contacts' class="site-nav__menu-item" active-class="site-nav__menu-item-active">Контакты</NuxtLink>
                </nav>
            </div>
            <div class="site-nav__block-two">
                <div class="site-nav__phone">
                    <img class="site-nav__phone-icon" src="\img\telephone.svg" alt="Телефон">
                    <a :href="`tel:${phone.value}`" class="site-nav__phone-number">{{ phone.label }}</a>
                </div>
                <Dialog v-model:open="dialogOpened" />
                <button class="site-nav__button" @click='dialogOpened = true'>
                    <span class="site-nav__button-text">Оставить заявку</span>
                </button>
                <Drawer class="site-nav__button-burger"/>
            </div>
        </div>
    </header>
</template>

<script setup>
    import Drawer from './Drawer.vue'
    import {mockContacts} from '~/assets/contacts.js'
    const { phone, email, address} = mockContacts
    const dialogOpened = ref(false)
</script>

<style scoped lang="scss">
    .header{
        padding: 24px 0px;
    }

    .site-nav__container{
        display: flex;
        flex-direction: row;
    }

    .site-nav__block-one{
        display: flex;
        flex-direction: row;
        align-items: center;
        gap: 80px;
        width: 50%;
        font-family: var(--main-font)
    }
    .site-nav__menu{
        display: flex;
        gap: 24px;
        font-size: 16px;
        color: #666666;
        flex-wrap: wrap;
    }

    .site-nav__menu-item{
        cursor: pointer;
        &-active{
            color: #029F59;
        }
    }

    .site-nav__block-two{
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: flex-end;
        width: 50%;
        gap: 24px;
        font-family: var(--font)
    }

    .site-nav__button{
        background-color: #029F59;
        color: #ffffff;
        border-radius: 10px;
        padding: 16px 40px;
        border: 0px;
        font-family: inherit;
        cursor: pointer;
        text-align: center;
    }

    .site-nav__phone{
        display: flex;
        align-items: center;
        gap: 8px;
        font-size: 14px;
        line-height: 120%;
        @media (max-width: 520px){
            display: none;
        }
    }

    .site-nav__phone-number{
        color: #254741;
        cursor: pointer;
    }

    .site-nav__phone-icon{
        width: 16px;
    }
    
    @media (max-width: 955px){
        .site-nav__menu{
            display: none;
        }
    }

    @media (max-width: 824px){
        .site-nav__button-burger{
            display: block;
        }

        .site-nav__button{
            display: none;
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
