var koa = require('koa'),
    router = require('koa-router')(),
    jsonp = require('koa-jsonp'),
    bodyParser = require('koa-bodyparser'),
    jwt = require('jsonwebtoken'),
    jwtKoa = require('koa-jwt');

const secret = 'jwt demo';

var app = new koa();
app.use(jsonp());
app.use(bodyParser({
    formLimit: '50mb'
}));
app.use(jwtKoa({secret}).unless({
    path: [
        /\/api\/login/
    ]
    // path: ['/api/login']
}));

var api = require('./routes/api')

router.use('/api', api);

app.use(router.routes());
app.use(router.allowedMethods());
app.listen(8000);