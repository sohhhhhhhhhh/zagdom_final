<template>
    <main class="main">
        <div class="main__container">
            <section class="slider">
                <div class="_container">
                    <Slider /> 
                </div>
            </section>
            <section class="block__info">
                <div class="_container">
                    <BlockInfo />
                </div>
            </section>
            <section class="projects">
                <div class="_container">
                    <Projects />
                </div>
            </section>
            <section class="news">
                <div class="_container">
                    <News />
                </div>
            </section>
        </div>
    </main>
</template>

<script setup>
    import BlockInfo from '../components/BlockInfo.vue'
    import Slider from '../components/Slider.vue'
    import Projects from '../components/Projects.vue'
    import News from '../components/News.vue'
</script>

<style>
    .projects{
        background-color: #F5F7F3;
    }
</style>

