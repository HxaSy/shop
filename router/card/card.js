const express = require('express')
const CardHandler = require('../../router_handler/card/card.js')


const router = express.Router()


// 获取购物车的所有商品
router.get('/cartInfo',CardHandler.getCardInfo)


// 添加到购物车
router.post('/add',CardHandler.addToCart)


// 更新购物车的商品数量
router.post('/update',CardHandler.updateCartInfo)

// 更新购物车的删除状态
router.post('/updateDel',CardHandler.updateCartDel)

module.exports = router