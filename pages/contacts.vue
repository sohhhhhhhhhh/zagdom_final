<template>
    <main class="main">
        <div class="main__container">
            <section class="contacts__page _container">
                <Breadcrumbs class="contacts__page-breadcrumbs"></Breadcrumbs>
                <div class="contacts__page-content">
                    <div class="contats__page-info">
                        <div class="contacts__page-title">Контакты</div>
                        <Contacts mode="page"/>
                    </div>
                    <div class="contacts__page-map">
                        <Map />
                    </div>
                </div>
            </section>
        </div>
    </main>
</template>

<script setup>
    import Breadcrumbs from '~/components/Breadcrumbs.vue';
    import { mockContacts } from '~/assets/contacts';
    import Contacts from '~/components/Contacts.vue';
    import Map from '~/components/YandexMap.vue';
    const {phone, email, address} = mockContacts
</script>

<style scoped>
    .contacts__page{
        margin-top: 40px;
    }

    .contacts__page-breadcrumbs{
        margin-bottom: 48px;
    }

    .contacts__page-title{
        margin-bottom: 32px;
        font-family: var(--font);
        font-weight: 700;
        font-size: 46px;
        line-height: 120%;
    }

    .contacts__page-content{
        display: flex;
        flex-direction: row;
        justify-content: space-evenly;
        margin-bottom: 80px;
    }

    @media (max-width: 1000px){
        .contacts__page-content{
            flex-direction: column;
            gap: 32px;
        }
        
        .contacts__page-title{
            margin-bottom: 24px;
            font-size: 36px;
        }

        .contacts__page{
            margin-top: 28px;
        }

        .contacts__page-breadcrumbs{
            margin-bottom: 32px;
        }
    }
    
</style>