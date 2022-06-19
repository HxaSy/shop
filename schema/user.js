//导入joi包，安装 joi 包，为表单中携带的每个数据项，定义验证规则
const joi = require('joi')

//定义用户名和密码的验证规则
// 用户名的验证规则
const username = joi.string().min(6).max(18).required()
// 密码的验证规则
const password = joi
    .string()
    .pattern(/^[\S]{6,12}$/)
    .required()

// 注册和登录表单的验证规则对象
exports.reg_register_schema = {
    // 表示需要对 req.body 中的数据进行验证
    body: {
        username,
        password,
    },
}