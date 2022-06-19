const express = require('express')


const swiperHandler = require('../../router_handler/swiper/swiper.js')


//创建路由实例
const router = express.Router()


//挂载路由
router.get('/swiper',swiperHandler.getSwiper)

//向外暴露
module.exports = router