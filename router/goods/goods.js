const express = require('express')
const goodsHandler = require('../../router_handler/goods/goods.js')


const router = express.Router()

// 挂载路由，处理函数抽离到另一个模块中
router.post('/getGoodInfo', goodsHandler.getGoodInfo)

router.post('/product/detail',goodsHandler.getProductById)

router.get('/products/list',goodsHandler.getProductList)


router.post('/list/detail',goodsHandler.getListDetail)


module.exports = router