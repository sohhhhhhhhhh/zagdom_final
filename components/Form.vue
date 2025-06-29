<template>
    <div class="form__container">
        <div class="form__title">Оставить заявку</div>
        <form class="form" action="">
            <div class="form__block">
                <input type="text" name="name" id="name" placeholder="Имя" required>
            </div>
            <div class="form__block">
                <input name="tel" v-maska:raw.unmasked data-maska="+7-(###)-###-##-##" v-model="masked" placeholder="Телефон" required>
            </div>
            <div class="form__block">
                <textarea name="message" id="message" rows="5" cols="33" placeholder="Сообщение"></textarea>
            </div>
            <button class="form__button" type="submit">Оставить заявку</button>
        </form>
        <div class="form__text">
            Нажимая на кнопку «Отправить», вы принимаете <a href="#">пользовательское соглашение </a>
            и <a href="#">политику конфиденциальности</a>
        </div>
    </div>
</template>

<script>
    const masked = ref("")
    const raw = ref("")
</script>

<style lang="scss">
    .form__container{
        padding: 30px 48px;
        margin-bottom: 26px;
        font-family: var(--font);
    }
    .form__title{
        font-size: 32px;
        line-height: 160%;
        font-family: var(--font);
        font-weight: 700;
        margin-bottom: 24px;
    }
    
    .form{
        display: flex;
        flex-direction: column;
        gap: 24px;
        width: 100%;
        font-size: 14px;
        
    }

    .form__block>input{
        width: 100%;
        background-color: white;
        padding: 16.5px 16px;
        box-sizing: border-box;
        border-radius: 5px;
    }

    .form__block>textarea{
        background-color: white;
        width: 100%;
        resize: none;
        border: none; 
        padding: 16.5px 16px;
        box-sizing: border-box;
        font-family: var(--font);
        font-size: 14px;
        border-radius: 5px;
    }

    .form__button{
        background-color: #029F59;
        border-radius: 10px;
        align-self: center;
        padding: 16px 40px;
        color: white;
        margin-bottom: 16px;
    }

    .form__text{
        font-size: 14px;
        text-align: center;
        line-height: 150%;
        a{
            color:#029F59;
            cursor: pointer;
        }
    }

    @media (max-width: 737px){
        .form__container{
            margin-bottom: 0px;
            padding-top: 50px;
        }
    }

    @media (max-width: 737px){
        .form__title{
            font-size: 28px;
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

