const db = require('../../db/connect.js')


// 获取轮播图信息
exports.getSwiper = (req,res)=>{
    const sql = `select * from swiper`

    db.query(sql,(err,results)=>{
        // if(err) return 
        if(err) return res.send('获取数据失败')

        // res.send('ok')

        res.send({
            code:'0',
            data:results
        })

        // res.cc('ok')
    }
    )
    // res.cc('ok')
}