const express = require('express')


//安装 @escook/express-joi 中间件，来实现自动对表单数据进行验证的功能
const expressJoi = require('@escook/express-joi')


//导入验证规则
const { reg_register_schema } = require('../../schema/user.js')

//创建路由对象
const router = express.Router()


//导入方法的模块
const userHandler = require('../../router_handler/user/user')

//挂载登录路由，并进行表单的优化验证，调用expressJoi()
router.post('/login', userHandler.login)

//挂载注册路由,并进行表单的优化验证，调用expressJoi()
router.post('/register', expressJoi(reg_register_schema), userHandler.regUser)


//对外暴露
module.exports = router