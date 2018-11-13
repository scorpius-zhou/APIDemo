var router = require('koa-router')();

var DB = require('../../model/db')

//显示用户已领取的列表
router.get('/:id/coupons', async ctx=>{
    console.log(ctx.params)
    console.log(ctx.header.authorization)
    let id = ctx.params.id;

    let result = await new Promise((resolve,reject)=>{

        let sql = 'select coupons.*,coupon_user.type from coupons left join coupon_user on coupon_user.coupon_id=coupons.id where coupon_user.user_id=? group by coupon_user.user_id,coupon_user.coupon_id ';
        let val = [id];
        DB.query(sql, val, function(err, results, fields){
            resolve(results);
        });
    });
    ctx.body = {
        data: result
    }
});

module.exports = router.routes()