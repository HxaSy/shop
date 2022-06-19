const db = require('../../db/connect.js')


// 根据商品最近的状态获取商品信息--比如是热卖的商品或者是新上市的
exports.getGoodInfo = function(req,res){
    const sql = `select * from goods where goods_type=?`

    db.query(sql,req.body.type,(err,results)=>{
        if(err) return res.send(err)

        if(results.length < 1) return res.send('数据为空')

        res.send({
            code:0,
            msg:'获取数据成功',
            data:results
        })
    })
}

// 根据商品的id获取商品的详细信息
exports.getProductById = (req,res)=>{
    const sql = `select * from goods where goods_id=?`

    db.query(sql,req.body.id,(err,results)=>{
        if(err) return res.send(err)

        if(results.length < 1) return res.send('数据为空')

        res.send({
            code:0,
            msg:'获取信息成功',
            data:results
        })
    })
}

// 获取分类列表
exports.getProductList = function(req,res){
    const sql = `select * from product_list`

    db.query(sql,(err,results)=>{
        if(err) return res.send(err)

        if(results.length < 1) return res.send('获取列表信息失败')

        res.send({
            code:0,
            msg:'获取列表信息成功',
            data:results
        })
    })
}


// 获取分类详情
exports.getListDetail = function(req,res){
    // console.log(req.body)
    const sql =  `select * from list_detail where list_type =?`

    db.query(sql,req.body.type,(err,results)=>{
        if(err) return res.send(err)

        if(results.length < 1) return res.send('查询信息为空')

        res.send({
            code:0,
            msg:'查询成功',
            data:results
        })
    })
}
