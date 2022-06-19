const db= require('../../db/connect.js')

//导入生成token的jsonwebtoken包
const jwt = require('jsonwebtoken')


//导入用于加密与解密的密钥
const config = require('../../config')

exports.regUser = (req,res)=>{
    const sql = `select * from user where username=?`
    

    //不允许注册相同的用户名
    db.query(sql, [req.body.username], (err, results) => {
        if (err) return res.send(err)

        if (results.length > 0) {
            return res.send({
                code:1,
                msg:'用户已存在'
            })
        }


        //添加新用户
        const sql = `insert into user set ?`
        db.query(sql, { username: req.body.username, password: req.body.password }, (err, results) => {
            if (err) return res.send(err)

            if (results.affectedRows !== 1)
                return res.send('注册用户失败，请稍后尝试')

            res.send({
                code:0,
                meg:'注册成功'
            })
        })
    })
}


exports.login = (req, res) => {
    const userinfo = req.body

    const sql = `select * from user where username =?`

    //根据用户名查询用户的信息
    db.query(sql, userinfo.username, (err, results) => {
        if (err) return res.send(err)

        // console.log(results)

        //在用户表查询不到
        if (results.length !== 1) return res.send({
            code:1,
            msg:'该用户不存在'
        })

        //验证密码是否一致,调用bcryptjs里的compareSync(用户密码，数据密码),应为密码是经过加密的
        // const compareResult = bcrypt.compareSync(userinfo.password, results[0].password)

        //密码不一致
        if (userinfo.password !== results[0].password) return res.send({
            code:2,
            msg:'密码错误'
        })


        //要确保生成的token不包含密码password 和 头像 uesr_pic,使用es6的语法
        const user = { ...results[0], password: ''}
        // console.log(user);

        //生成token，返回给客户端
        const tokenStr = jwt.sign(user, config.jwtSecretKey, { expiresIn: config.expiresIn })

        res.send({
            code: 0,
            message: results[0].username,
            token: 'Bearer ' + tokenStr
        })
    })
}