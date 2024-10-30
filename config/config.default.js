/* eslint valid-jsdoc: "off" */

'use strict';
const path = require('path');
/**
 * @param {Egg.EggAppInfo} appInfo app info
 */

module.exports = appInfo => {
  /**
   * built-in config
   * @type {Egg.EggAppConfig}
   **/
  const config = exports = {};

  // use for cookie sign key, should change to your own and keep security
  config.keys = appInfo.name + '_1730260375415_6992';

  // add your middleware config here
  config.middleware = [];

  // add your user config here
  const userConfig = {
    // myAppName: 'egg',
    cluster: {
      listen: {
        path: '',
        port: 8866,
        hostname: ''
      }
    },
    security: {
      csrf: {
        enable: false
      },
      domainWhiteList: [ '*' ]
    },
    jwt: {
      secret: 'secret_key_qiangqiang', // 用于签名的密钥
      expiresIn: '7d', // Token 过期时间
    },
    cors: {
      origin: '*',
      allowMethods: 'GET,HEAD,PUT,POST,DELETE,PATCH,OPTIONS'
    },
    middleware: [ 'jwtMiddleware', 'loggerMiddleware' ],
    logger: {
      dir: path.join(appInfo.root, 'logs')
    },
    logrotator: {
      filesRotateByHour: [
        path.join(appInfo.root, 'logs', `${appInfo.name}-web.log`),
      ],
      maxFiles: 100 // 最多保留文件数量
    },
    mysql: {
      // 单数据库信息配置
      client: {
        // host
        host: '127.0.0.1',
        // 端口号
        port: '3306',
        // 用户名
        user: 'root',
        // 密码
        password: 'root',
        // 数据库名
        // database: 'viper_manager',
        database: 'myvipers',
      },
      tables: {
        login: 'admin_users',
        vipers: 'vip_users',
        opLogs: 'oprate_log'
      },
      // 是否加载到 app 上，默认开启
      app: true,
      // 是否加载到 agent 上，默认关闭
      agent: false
    }
  };

  return {
    ...config,
    ...userConfig,
  };
};
