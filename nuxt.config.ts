export default defineNuxtConfig({
    vite: {
        css: {
            preprocessorOptions: {
                scss: {
                    additionalData: `@use "@/assets/styles/mixins.scss" as *;`
                }
            }
        }
    },

    compatibilityDate: '2024-11-01',
    devtools: { enabled: true },

    modules: [
        ['@nuxtjs/google-fonts', {
            families: {
                'Open Sans': [400, 700],
                'Montserrat': true,
            }
        }],
        'nuxt-swiper',
        'reka-ui/nuxt',
        'vue-yandex-maps/nuxt',
    ],

    css: [
        '~/assets/css/dialog.css',
        '~/assets/css/main.css',
        '~/assets/css/pagination.css'
    ],

    runtimeConfig: {
        public: {
            yandexMapsApiKey: process.env.YANDEX_MAPS_API_KEY
        }
    },

    app: {
        head: {
            script: [
                {
                    src: `https://api-maps.yandex.ru/v3/?apikey=${process.env.YANDEX_MAPS_API_KEY}&lang=ru_RU`,
                    defer: true,
                    id: 'yandex-maps-script'
                }
            ]
        }
    },

    yandexMaps: {
        apikey: process.env.YANDEX_MAPS_API_KEY
    }
})
