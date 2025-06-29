<template>
    <div class="contacts" :mode="mode">
        <div class="contacts_phone">
            <img class="contacts__phone-icon" src="\img\telephone.svg" alt="Телефон">
            <a :href="`tel:${phone.value}`" class="contacts__phone-number">{{ phone.label }}</a>
        </div>
        <div class="contacts__email">
            <img class="contacts__email-icon" src="\img\email.svg" alt="Почта">
            <a :href='`mailto:${email}`'>{{email}}</a>
        </div>
        <div class="contacts__address">
            <img class="contacts__address-icon" src="\img\address.svg" alt="Адрес">
            <address v-html="address"></address>
        </div>
    </div>
</template>

<style>
    .contacts{
        display: flex;
        flex-direction: column;
        font-family: var(--font);
        gap: 24px;
        font-size: 14px;
    }

    .contacts[data-mode='page']{
        font-size: 20px;
        gap: 40px;
        div{
            gap: 16px;
        }

        .contacts__phone-number{
            font-weight: 700;
        }
    }

    .contacts div{
        display: flex;
        line-height: 120%;
        gap: 8px;
        align-items: flex-start;
    }

    .contacts[mode='page']{
        font-size: 20px;
        gap: 40px;
        div{
            gap: 16px;
        }

        img{
            width: 24px;
        }

        .contacts__phone-number{
            font-weight: 700;
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
    import {mockContacts} from '~/assets/contacts.js'
    const { phone, email, address} = mockContacts
    const props = defineProps({
        mode: {
            type: String
        }
    })
</script>