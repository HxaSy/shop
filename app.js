const express = require('express')

//创建express实例
const app = express()


//配置跨域
const cors = require('cors')
app.use(cors())

//导入joi包，安装 joi 包，为表单中携带的每个数据项，定义验证规则
const joi = require('joi')

// 配置表单解析
app.use(express.urlencoded({extended:false}))


//解析json
app.use(express.json())

//导入解析token的包
const expressJWT = require('express-jwt')


//导入密钥的包
const config = require('./config')

//解析token
app.use(expressJWT({ secret: config.jwtSecretKey }).unless({ path: [/^\/api\//] }))


//注册路由
const mySwiper = require('./router/swiper/swiper.js')
app.use('/api',mySwiper)


const myGoods = require('./router/goods/goods.js')
app.use('/api',myGoods)


const myCard = require('./router/card/card.js')
app.use('/cart',myCard)

//注册路由
const userRouter = require('./router/user/user.js')
app.use('/api', userRouter)

const userinfo = require('./router/user/userinfo.js')
app.use('/my',userinfo)

// // 错误中间件
// app.use(function (err, req, res, next) {
//     // 数据验证失败
//     if (err instanceof joi.ValidationError) return res.send(err)

//     // 捕获身份认证失败的错误
//     //  if (err.name === 'UnauthorizedError') return res.send({
//     //     code:401,
//     //     message:'token错误'
//     // })
//     if (err.name === 'UnauthorizedError') return res.send(err)
//     // 未知错误
//     res.send(err)
// })


app.listen(30,()=>{
    console.log('127.0.0.1:30')
})