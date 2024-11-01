module.exports = () => {
  // console.log(options);
  return async function jwtMiddleware(ctx, next) {
    const token = ctx.get('Authorization');
    try {
      console.log(ctx.request.path);
      if (ctx.request.path !== '/v1/login') {
        const realToken = token ? token.indexOf('Bearer ') > -1 ? token.split('Bearer ')[1] : token : null;
        await ctx.app.jwt.verify(realToken);
      }
      await next();
    } catch (err) {
      console.dir(err);
      if (err.message && (err.message.indexOf('jwt') > -1 || err.message.indexOf('token') > -1)) {
        ctx.status = 401;
        ctx.body = {
          code: 401,
          success: false,
          msg: token ? '会话超时，请重新登录' : 'Token 校验失败，请登录',
          data: null
        };
      } else {
        ctx.status = 502;
        ctx.body = {
          code: ctx.status || 502,
          success: false,
          msg: err.message || '请求异常',
          data: null
        };
      }
    }
  };
};
