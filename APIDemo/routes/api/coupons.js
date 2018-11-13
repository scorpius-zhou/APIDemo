var router = require('koa-router')();
var jwt = require('jsonwebtoken')

var DB = require('../../model/db')

const secret = 'jwt demo';

//获取优惠列表
router.get('/', async ctx=>{

    let result = await new Promise((resolve,reject)=>{
        DB.query('select * from coupons', function(err, results, fields){
            if( err ) {
                reject(err);
            } else {
                resolve(results);
            }
        });
    });
    ctx.body = {
        data:result
    }
});

//新增优惠券
router.post('/', async ctx=>{
    
    let data = ctx.request.body;

    let result = await new Promise((resolve,reject)=>{

        let sql = 'insert into coupons(title, valid_term, money, min_money_limit, position_limit) values (?, ?, ?, ?, ?) ';
        let val = [data.title, data.valid_term, data.money, data.min_money_limit, data.position_limit];
        DB.query( sql, val, function(err, result, fields) {
            resolve(result);
        });
    });
    if( result ) {        
        ctx.body = {
            message:'增加成功',
            code: 201
        }
    } else {
        ctx.body = {
            message:'增加失败',
            code: 500
        }
    }
});

//领取优惠券
router.patch('/:id/allot', async ctx=>{
    // console.log(ctx.header.authorization)
    // console.log(ctx.params)
    let couponId = ctx.params.id;
    
    let token = ctx.header.authorization;
    if( token ) {        
        let payload = await jwt.verify( token.split(' ')[1], secret);
        let userId = payload.userId
        let sql = 'insert into coupon_user(user_id, coupon_id, expire_at ) values (?, ?, ?)';
        let val = [userId, couponId, new Date()]
        let result = await new Promise((resolve, reject)=>{
            DB.query(sql, val, function(err, result, fields){
                if( err ) {
                    console.log(err);
                }
                resolve(result);
            })
        });
        console.log(result)
        if( result ) {            
            ctx.body = {
                message: '领取成功',
                code: 201
            }
        } else {            
            ctx.body = {
                message: '领取失败',
                code: 202
            }
        }
    } else {
        ctx.body = {
            message: '用户验证失败',
            code: 500
        }
    }
});

//删除优惠券
router.delete('/:id', async ctx=>{
    let id = ctx.params.id;

    let result = await new Promise((resolve,reject)=>{
        let sql = 'delete from coupons where id=?';
        let val = [id];
        DB.query(sql, val, function(err, results, fields){
            resolve(results);
        });
    });

    if( result.affectedRows == 1 ) {
        ctx.body = {
            message: '删除成功',
            code: 200
        }
    } else {
        ctx.body = {
            message: '删除失败',
            code: 500
        }
    }
});


module.exports = router.routes();