<template>
    <footer class="footer">
        <div class="footer__container _container">
            <div class="footer__content">
                <div class="footer__logo">
                    <img src="\img\footer_logo.svg" alt="" class="footer__logo-icon">
                </div>
                <nav class="footer__nav">
                    <a href="#" class="footer__nav-item">Реализованные проекты</a>
                    <NuxtLink to='/news' class="footer__nav-item">Новости</NuxtLink>
                    <NuxtLink to='/contacts' class="footer__nav-item">Контакты</NuxtLink>
                </nav>
                <Contacts class="footer__contacts"/>
                <div class="footer__button-container">
                    <Dialog v-model:open="dialogOpened" />
                    <button class="footer__button" @click='dialogOpened = true'>Оставить заявку</button>
                </div>
                <div class="footer__rights-item1">
                    <a class="footer__rights-link" href="#">© Загдом, 2021</a>
                </div>
                <div class="footer__rights-item2">
                    <a class="footer__rights-link" href="#">Политика конфиденциальности</a>
                </div>
                <div class="footer__rights-item3">
                    <a class="footer__rights-link" href="#">Пользовательское соглашение</a>
                </div>
            </div>
        </div>
    </footer>
</template>

<style>
    .footer{
        background-color: #254741;
        padding-bottom: 33px;
        padding-top: 37px;
        color: #ffffff;
    }
    

    .footer__logo{
        grid-area: logo;
    }

    .footer__content{
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        grid-template-areas: "logo nav contacts button"
                             "rights_first rights_second rights_third .";
        row-gap: 32px;
        column-gap: 24px;
    }

    .footer__nav{
        display: flex;
        flex-direction: column;
        font-family: var(--main-font);
        gap: 24px;
        font-size: 16px;
        align-items: flex-start;
        grid-area: nav;
    }

    .footer__contacts{
        grid-area: contacts;
    }

    .footer__button-container {
        display: flex;
        justify-content: flex-end;
        align-items: flex-start;
        grid-area: button;
    }

    .footer__button{
        background-color: #029F59;
        border-radius: 10px;
        padding: 16px 40px;
        border: 0px;
        font-family: var(--font);
        cursor: pointer;
        text-align: center;
    }

    .footer__rights-item1, .footer__rights-item2, .footer__rights-item3{
        font-family: var(--main-font);
        font-size: 14px;
        opacity: 0.6;
        align-items: flex-start;
    }

    .footer__rights-item1{
        grid-area: rights_first;
    }

    .footer__rights-item2{
        grid-area: rights_second;
    }

    .footer__rights-item3{
        grid-area: rights_third;
    }

    .footer__rights-link, .footer__contacts a, .footer__nav a{
        cursor: pointer;
    }
    
    @media (max-width: 824px){
        .footer__content{
            grid-template-columns: 1fr;
            grid-template-areas: "logo"
                                 "nav"
                                 "contacts"
                                 "button"
                                 "rights_first "
                                 "rights_second"
                                 "rights_third";
                             
        }

        .footer__container{
            gap: 40px;
        }

        .footer__button-container {
            justify-content: start; 
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
    const dialogOpened = ref(false)
    import {mockContacts} from '~/assets/contacts.js'
    const { phone, email, address} = mockContacts
    import Contacts from './Contacts.vue'
</script>