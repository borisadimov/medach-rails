<template lang="pug">
  .min-fotos
      .min-fotos__day.min-fotos__tuesday
        .min-fotos__day-wrapper
          router-link.min-fotos__item(v-for="(post, index) in posts", :key="index", :to="'post/' + post.id")
            .min-fotos__foto-wrapper
              .min-fotos__item-foto(v-if="post.image", :style="{ background: `url(${post.image.url})` }")
              .min-fotos__item-foto_placeholder
                span
                  | MEDACH
            .min-fotos__item-text
              | {{ post.shorttext }}
</template>

<script>
import { mapMutations } from 'vuex'
import moment from 'moment'
import { format } from 'date-fns'
import ru from 'date-fns/locale/ru'

export default {
  props: ['posts', 'day'],

  data () {
    return {
    }
  },

  mounted () {
  },

  computed: {
    dayOfTheWeek () {
      // return moment(this.day, 'DD/MM/YYYY').lang('ru').format('dddd')
      return format(moment(this.day, 'DD/MM/YYYY'), 'dddd', { locale: ru })
    }
  },

  methods: {
    ...mapMutations(['setActiveDate']),

    getShortText(text) {
      const textArray = text.split('.')
      let result = []
      if (textArray.length > 1) {
        result = [textArray[0], textArray[1]]
        return result.join('.')
      }
      else {
        return textArray.join('.')
      }
    }
  }
}
</script>

<style scoped lang="scss">
  .main-index {
  padding-bottom: 50px;
}

.min-fotos__day-data {
  display: flex;
  justify-content: space-between;

  max-width: 1280px;
  width: 100%;

  margin: 0 auto;
  padding: 0 19px;

  font-family: LucidaGrande-Bold;
  font-size: 12px;
  margin-bottom: 14px;
}

.min-fotos__day-data-digit {
  margin-left: auto;
  cursor: pointer;
}

.min-fotos__day-data-circle {
  display: block;
  width: 9px;
  height: 9px;
  margin-top: 3px;
  margin-left: 13px;

  background: #0da4fa;
  border-radius: 50%;
}

.min-fotos__day-wrapper {
  display: flex;
  flex-flow: row wrap;
  justify-content: flex-start;

  max-width: 1090px;
  width: 100%;
  margin: 0 auto;
}

.min-fotos__item {
  width: 167px;

  font-size: 12px;
  color: #515666;
  line-height: 16px;
  margin-left: 40px;
  margin-bottom: 40px;
}

.min-fotos__foto-wrapper {
  position: relative;
  height: 219px;
  margin-bottom: 10px;
}

.min-fotos__item-foto {
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  background-repeat: no-repeat !important;
  background-position: center !important;
  background-size: cover !important;
  z-index: 2;

  &_placeholder {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: #f8f8f8;
    z-index: 1;

    span {
      font-size: 18px;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      line-height: 24px;
      color: #aaaaaa;
    }
  }
}

.min-fotos__day-data-text {
  text-transform: capitalize;
}

.min-fotos__item-foto-1 {
  background: url('../static/images/pain.jpg') no-repeat center;
  background-size: contain;
}

.min-fotos__item-foto-2 {
  background: url('../static/images/stress-brain.jpg') no-repeat center;
  background-size: contain;
}

.min-fotos__item-foto-3 {
  background: url('../static/images/mouth.jpg') no-repeat center;
  background-size: contain;
}

.min-fotos__item-foto-4 {
  background: url('../static/images/vaccine.jpg') no-repeat center;
  background-size: contain;
}

.min-fotos__item-foto-5 {
  background: url('../static/images/vaccine-wars.jpg') no-repeat center;
  background-size: contain;
}

.min-fotos__item-foto-6 {
  background: url('../static/images/mikrobiom-intestines.jpg') no-repeat center;
  background-size: contain;
}

.min-fotos__item-foto-7 {
  background: url('../static/images/darkside.jpg') no-repeat center;
  background-size: contain;
}

.min-fotos__item-foto-8 {
  background: url('../static/images/womb.jpg') no-repeat center;
  background-size: contain;
}

.min-fotos__item-foto-9 {
  background: url('../static/images/crisp.jpg') no-repeat center;
  background-size: contain;
}

.min-fotos__item-foto-10 {
  background: url('../static/images/nay_2.jpg') no-repeat center;
  background-size: contain;
}

.min-fotos__item-foto-11 {
  background: url('../static/images/medical-channel.jpg') no-repeat center;
  background-size: contain;
}

.min-fotos__item-foto-12 {
  background: url('../static/images/k-i.jpg') no-repeat center;
  background-size: contain;
}

.min-fotos__item-foto-13 {
  background: url('../static/images/woman.jpg') no-repeat center;
  background-size: contain;
}

.min-fotos__item-foto-14 {
  background: url('../static/images/scince-rich.jpg') no-repeat center;
  background-size: contain;
}

.min-fotos__item-foto-15 {
  background: url('../static/images/eye.jpg') no-repeat center;
  background-size: contain;
}

.min-fotos__day {
  padding-top: 25px;
  padding-bottom: 14px;
}

.min-fotos__grey {
  background-color: #F8F8F8;
}

.min-fotos__item-text {
  max-height: 50px;
  overflow: hidden;
}

@media (max-width: 1024px) {
  .min-fotos {
    padding: 0 40px;
  }
  .min-fotos__item {
    width: calc(33.3% - 27px);

    &:nth-child(3n - 2) {
      margin-left: 0;
    } 
  }

  .min-fotos__foto-wrapper {
    height: 275px;
  }
}

@media (max-width: 767px) {
  .min-fotos__item {
    width: 100%;
    margin-left: 0;

    margin-top: 20px;
  }

  .min-fotos__foto-wrapper {
    height: 370px;
  }

  .min-fotos__item-text {
    font-size: 18px;
    line-height: 22px;
    max-height: 68px;
  }
}

</style>

