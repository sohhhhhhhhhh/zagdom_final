<template>
    <div class="block__info">
        <div class="block__info-title">Каждый проект для нас - важный</div>
        <div class="block__info-text">
            <span>Мы строительная компания полного цикла.</span>
            <span>
                Вникаем во все детали, разрабатываем планировку 
                будущего дома, продумываем конструктивные решения 
                и общую архитектурную концепцию
            </span>
        </div>
        <div class="block__info-card">
            <img сlass ="card__info-icon" src="../img/house.svg" alt="">
            <div class="card__info-title">57 домов</div>
            <div class="card__info-subtitle">спроектировали и построили “под ключ”</div>
        </div>
        <div class="block__info-card">
            <img сlass ="card__info-icon" src="../img/calendar.svg" alt="">
            <div class="card__info-title">14 лет</div>
            <div class="card__info-subtitle">мы на рынке загородного строительства</div>
        </div>
    </div>
</template>

<style scoped lang="scss">
    .block__info{
        display: grid;
        grid-template-columns: 2fr 1fr 1fr;
        column-gap: 16px;
        margin-bottom: 120px;
    }

    .block__info-title{
        font-family: var(--font);
        font-weight: 700;
        font-size: 38px;
        line-height: 120%;
        letter-spacing: 0;
        grid-column: 1/4;
        width: 50%;
    }

    .block__info-text{
        display: flex;
        flex-direction: column;
        font-family: var(--main-font);
        color: #666666;
        font-size: 20px;
        line-height: 135%;
        justify-content: space-around;
    }

    .block__info-card{
        background-color: #F5F7F3;
        border-radius: 20px;
        padding: 24px;
        img{
            margin-bottom: 24px;
        }
    }

    .card__info-title{
        font-family: var(--font);
        font-size: 24px;
        font-weight: 700;
        margin-bottom: 8px;
    }

    .card__info-subtitle{
        font-family: var(--main-font);
        font-size: 20px;
        line-height: 135%;
    }

    @media(max-width: 824px){
        .block__info{
            grid-template-columns: 1fr;
            gap: 32px;
            background: white;
            margin-bottom: 80px;
        }

        .block__info-title{
            grid-column: 1/2;
            font-size: 28px;
            width: 100%;
        }

        .block__info-text{
            gap: 30px;
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