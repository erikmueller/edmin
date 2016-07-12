import Swiper from 'swiper'
require('../../../node_modules/swiper/src/less/core.less')

window.addEventListener('load', () => {
  function onSlideChangeStart({activeIndex, slides}) {
    const slideContent = slides[activeIndex].children[0]

    if (slideContent.tagName === 'VIDEO') {
      slideContent.currentTime = 0;
    }
  }

  function onSlideChangeEnd({activeIndex, slides, isEnd}) {
    const slideContent = slides[activeIndex].children[0]

    if (slideContent.tagName === 'VIDEO') {
      slideContent.addEventListener('ended', () => mySwiper.slideNext())
      slideContent.play()
    } else {
      // the first slide after the loop is counted as the last + 1 so we need to reset the index
      // `window__DURATIONS__` is injected by server rendering
      window.setTimeout(() => mySwiper.slideNext(), window.__DURATIONS__[isEnd ? 0 : activeIndex - 1])
    }
  }

  const mySwiper = new Swiper('.swiper-container', {
    loop: true,
    effect: 'fade',
    onSlideChangeStart,
    onSlideChangeEnd
  })
})
