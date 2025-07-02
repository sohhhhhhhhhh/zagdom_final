<template>
    <div class="drawer__burger">
        <div class="drawer__button-wrapper">
            <button class="drawer__button" :class="{ 'drawer__button--active': isOpen }" @click="toggleMenu">
                <span class="drawer__line"></span>
                <span class="drawer__line"></span>
                <span class="drawer__line"></span>
            </button>
        </div>
        
  
        <transition name="slide">
            <div v-show="isOpen" class="drawer__menu">
                <nav class="drawer__nav">
                    <a href="#" class="drawer__item" @click="closeMenu">Реализованные проекты</a>
                    <NuxtLink to='/news' class="drawer__item" @click="closeMenu">Новости</NuxtLink>
                    <NuxtLink to='/contacts' class="drawer__item" @click="closeMenu">Контакты</NuxtLink>
                </nav>
                <div class="drawer__contacts">
                    <div class="drawer__phone">
                        <img class="drawer__phone-icon" src="\img\drawer_phone.svg" alt="Телефон">
                        <a :href="`tel:${phone.value}`" class="drawer__phone-number">{{phone.label}}</a>
                    </div>
                    <div class="drawer__email">
                        <img class="drawer__email-icon" src="\img\drawer_email.svg" alt="Почта">
                        <a :href="`mailto:${email}`">{{email}}</a>
                    </div>
                    <div class="drawer__address">
                        <img class="drawer__address-icon" src="\img\drawer_address.svg" alt="Адрес">
                        <address v-html="address"></address>
                    </div>
                </div>
            </div>
        </transition>
    
        <transition name="fade">
            <div v-show="isOpen" class="drawer__overlay" @click="closeMenu">
            </div>
        </transition>
    </div>
  </template>

<script setup>
    import { mockContacts } from '~/assets/contacts';
    const {phone, email, address} = mockContacts
    import { ref, watch} from 'vue';

    const isOpen = ref(false);

    const toggleMenu = () => {
        isOpen.value = !isOpen.value;
    };

    const closeMenu = () => {
        isOpen.value = false;
    };

    watch(isOpen, (newVal) => {
        if (newVal) {
            document.body.style.overflow = 'hidden';
        } else {
            document.body.style.overflow = 'auto';
        }
    });
</script>

<style scoped lang="scss">
    a{
        cursor: pointer;
        display: inline;
    }

    .drawer__burger{
        display: none;
        flex-direction: column;
        justify-content: center;
        gap: 5px;
    }
    
    .drawer__button{
        display: flex;
        flex-direction: column;
        gap: 5px;
        background-color: #029F59;
        color: #ffffff;
        border-radius: 10px;
        padding: 16px;
        border: 0px;
        font-family: inherit;
        cursor: pointer;
        position: relative;
        z-index: 1001;
    }

    .drawer__line{
        display: block;
        width: 24px; 
        height: 2px;
        background: white;
        transition: all 0.3s ease;
    }

    .drawer__button--active {
        .drawer__line {
            &:nth-child(1) {
                transform: translateY(7px) rotate(45deg);
                border-radius: 2px;
                height: 4px;
            }
            &:nth-child(2) {
                opacity: 0;
            }
            &:nth-child(3) {
                transform: translateY(-9px) rotate(-45deg);
                border-radius: 2px;
                height: 4px;
            }
        }
        background-color: rgb(255,255,255,0.2);
        padding: 11px;
        
    }

    .drawer__overlay{
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.5);
        z-index: 999;
    }

    .drawer__menu{
        display: flex;
        flex-direction: column;
        position: fixed;
        top: 0;
        right: 0;
        width: 80%;
        max-width: 215px;
        height: 100vh;
        background: #029F59;
        z-index: 1000;
        padding-left: 21px;
        padding-right: 10px;
    }

    .drawer__nav{
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        gap: 24px;
        margin-top: 80px;
        width: 150px;
        font-family: var(--main-font);
    }

    .drawer__item{
        color: #ffffff;
        font-size: 18px;
        font-weight: 400;
        text-decoration: none;
        display: block;
    }

    .drawer__contacts{
        display: flex;
        flex-direction: column;
        gap: 24px;
        font-size: 14px;
        color: #ffffff;
        font-family: var(--font);
        margin-bottom: 54px;
        margin-top: auto;
    }

    .drawer__contacts div{
        display: flex;
        line-height: 120%;
        gap: 8px;
        align-items: flex-start;
    }

    .slide-enter-active, .slide-leave-active {
        transition: transform 0.3s ease;
    }

    .slide-enter-from, .slide-leave-to {
        transform: translateX(100%);
    }

    .fade-enter-active, .fade-leave-active {
        transition: opacity 0.3s ease;
    }

    .fade-enter-from, .fade-leave-to {
        opacity: 0;
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