var router = require('koa-router')();
var jwt = require('jsonwebtoken')

var DB = require('../model/db')

var coupons = require('./api/coupons')
var users = require('./api/users')

const secret = 'jwt demo';

router.use(async (ctx,next)=>{
    console.log(ctx.header)
    await next();
});

router.post('/login', async (ctx,next)=>{
    console.log(ctx.request.body);

    let data = ctx.request.body;
    if( data && data.id ) {
        let userToken = {
            userId: data.id
        }
        let token = jwt.sign(userToken, secret, {expiresIn: '1h'});
        ctx.body = {
            result: 'ok',
            code: 200,
            token
        }
    } else {
        ctx.body = {
            result: 'not found',
            code: 404
        }
    }
})

router.use('/coupons', coupons);
router.use('/users', users);

module.exports = router.routes();