<template>
    <main class="main">
        <div class="main__container">
            <section class="news__page _container">
                <Breadcrumbs class="news__page-breadcrumbs"></Breadcrumbs>
                <div class="news__page-title">
                    Новости
                </div>
                <div ref="gridRef" class="news__page-grid">
                    <NewsCard v-for="(card, index) in paginatedCards" :key="index" v-bind="card" />
                </div>
                <div class="news__page-pagination">
                    <Pagination v-model:page="currentPage" :total="totalPages" />
                </div>
            </section>
        </div>
    </main>
</template>

<script setup>
    import NewsCard from '~/components/NewsCard.vue'
    import Breadcrumbs from '~/components/Breadcrumbs.vue'
    import Pagination from '~/components/Pagination.vue'
    import { newsData } from '~/assets/mock.js'

    const currentPage = ref(1)
    const itemsPerPage = ref(4)
    const gridRef = ref(null)
    const allCards = []

    for (let i = 0; i < 12; i++) {
    const indexInNewsData = i % newsData.length
    allCards.push(newsData[indexInNewsData])
    }

    function updateItemsPerPage() {
        const windowWidth = window.innerWidth 
        if (windowWidth < 800) {
            itemsPerPage.value = 4
        } else if (windowWidth < 1000) {
            itemsPerPage.value = 8
        } else {
            itemsPerPage.value = 12
        }
        totalPages.value = Math.ceil(allCards.length / itemsPerPage.value)
    }

    const paginatedCards = computed(() => {
        const start = (currentPage.value - 1) * itemsPerPage.value
        return allCards.slice(start, start + itemsPerPage.value)
    })

    const totalPages = ref(1)

    onMounted(() => {
        updateItemsPerPage()
        window.addEventListener('resize', updateItemsPerPage)
    })

    onBeforeUnmount(() => {
        window.removeEventListener('resize', updateItemsPerPage)
    })
</script>

<style lang="scss">
    .news__page{
        display: flex;
        flex-direction: column;
        margin-top: 40px;
        margin-bottom: 80px;
    }

    .news__page-breadcrumbs{
        margin-bottom: 48px;
    }

    .news__page-title{
        font-size: 46px;
        font-weight: 700;
        line-height: 120%;
        font-family: var(--font);
        margin-bottom: 32px;
    }

    .news__page-grid {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
        gap: 16px 32px;
        margin-bottom: 40px;
    }

    .news__page-pagination{
        display: flex;
        justify-content: center;
        align-items: center;
    }

    @media (max-width: 824px){
        .news__page{
            margin-top: 32px;
            gap: 32px;
            &-breadcrumbs{
                margin-bottom: 0px;
            }
            &-title{
                margin-bottom: 0px;
                font-size: 32px;
            }
            &-grid{
                margin-bottom: 0px;
            }
        }
    }

    @media (max-width: 800px) {
        .news__page-grid {
            grid-template-columns: 1fr;
        }
    }

    @media (max-width: 600px) {
        .news__page-grid {
            grid-template-columns: 1fr;
        }
    }

</style>