const express = require('express')


//创建路由对象
const router = express.Router()


// 挂载路由
router.post('/userinfo',function(req,res){
    res.send({
        code:0,
        meaasge:'请求成功'
    })
})

module.exports =router