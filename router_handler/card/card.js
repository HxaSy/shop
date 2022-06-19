const db = require('../../db/connect.js')


// 获取购物车的信息
exports.getCardInfo = (req,res)=>{
    const sql = `select * from cart_list where is_del = 0`

    db.query(sql,(err,results)=>{
        if(err) return res.send(err)

        if(results.length < 1) return res.send('购物车为空')

        res.send({
            code:0,
            msg:'查询购物车列表成功',
            data:results
        })
    })
}


// 添加到购物车
exports.addToCart = (req,res) =>{
    // console.log(req.body)
    // 定义sql语句,查询购物车数据库中是否存在该商品
    const sql = `select * from cart_list where product_id =?`

    db.query(sql,req.body.item.product_id,(err,results)=>{
        // console.log(results)
        if(err) return res.send(err)

        if(results.length >= 1 && results[0].is_del === 1) return res.send({
            code:1,
            msg:'商品曾经在购物车删除',
            data:results
        })

        if(results.length >= 1) return res.send({
            
            code:2,
            msg:'商品已存在'
        })

        // 若购物车没有此商品，则添加到数据库中
        const sql = `insert into cart_list set ?`

        // 插入的信息
        const obj = {product_id:req.body.item.product_id,
        cart_title:req.body.item.goods_content,
        img_url:req.body.item.goods_img1,
        cart_price:req.body.item.goods_price}

        db.query(sql,obj,(err,results)=>{
            if(err) return res.send(err)

            // 在数据库中没有添加
            if(results.affectedRows !== 1) return res.send('添加购物车失败')

            res.send({
                code:0,
                msg:'添加购物车成功'
            })
        })
    })
}


// 更新购物车信息
exports.updateCartInfo = (req,res)=>{
    // console.log(req.body)
    // 更新购物车信息
    const sql = 'update cart_list set ? where cart_id=?'

    // 更新商品的数量
    db.query(sql,[{cart_num:req.body.cart_num},req.body.cart_id],(err,results)=>{
        if(err) return res.send(err)

        if(results.affectedRows !== 1 ) return res.send({
            code:1,
            msg:'更新数量失败'
        })

        res.send({
            code:0,
            msg:'更新数量成功'
        })
    })

    
}

exports.updateCartDel = (req,res)=>{
    const sql = 'update cart_list set ? where cart_id=?'

    db.query(sql,[{is_del:req.body.del},req.body.cart_id],(err,results)=>{
        if(err) return res.send(err)

        if(results.affectedRows !== 1) return res.send({
            code:1,
            msg:"删除失败,请稍后尝试"
        })

        res.send({
            code:0,
            msg:'删除成功'
        })
    })

}