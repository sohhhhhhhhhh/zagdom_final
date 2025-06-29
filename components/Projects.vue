<template>
    <div class="projects">
        <div class="projects__title">Реализованные проекты</div>
        <div class="projects__cards">
            <Project
                v-for='project in projects'
                :title='project.title'
                :text='project.text'
                :image_landscape='project.image_landscape'
                :image_portrait='project.image_portrait'
            />
        </div>
    </div>
</template>

<style scoped lang="scss">
    .projects{
        padding: 80px 0;
    }

    .projects__title{
        font-family: var(--font);
        font-weight: 700;
        font-size: 38px;
        line-height: 120%;
        margin-bottom: 32px;
    }

    .projects__cards{
        display: grid;
        grid-template-columns: repeat(2, 1fr);
        overflow: auto;
        column-gap: 12px;
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
    import Project from './Project.vue'
    import project1_landscape_1x from '../img/project-1-landscape.jpg'
    import project1_landscape_2x from '../img/project-1-landscape@2x.jpg'
    import project2_landscape_1x from '../img/project-2-landscape.jpg'
    import project2_landscape_2x from '../img/project-2-landscape@2x.jpg'
    import project1_portrait_1x from '../img/project-1-portrait.jpg'
    import project1_portrait_2x from '../img/project-1-portrait@2x.jpg'
    import project2_portrait_1x from '../img/project-2-portrait.jpg'
    import project2_portrait_2x from '../img/project-2-portrait@2x.jpg'
    const projects = [
        {
            image_landscape:{
                x1: project1_landscape_1x,
                x2: project1_landscape_2x
            },
            image_portrait:{
                x1: project1_portrait_1x,
                x2: project1_portrait_2x
            },
            title: 'Дом в скандинавском стиле',
            text: 'Одноэтажный дом из газобетона габаритными размерами 10.73 х 10.73 м. и жилой площадью 101 кв. м. с вальмовой кровлей.<br><br><br>Построен по индивидуальному проекту.'
        },
        {
            image_landscape:{
                x1: project2_landscape_1x,
                x2: project2_landscape_2x
            },
            image_portrait:{
                x1: project2_portrait_1x,
                x2: project2_portrait_2x
            },
            title: 'Дом из газобетона',
            text: 'Одноэтажный дом габаритными размерами 15.2 х 9.7м.<br>Приведенная площадь – 127.7 м.кв.<br><br><br>Три спальные комнаты, два сан.узла, большая кухня-гостиная с выходом на террасу.'
        }
    ]
</script>