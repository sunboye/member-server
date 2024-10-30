'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  require('./router/v1/loginApi')(app);
  require('./router/v1/vipersApi')(app);
  require('./router/v1/logsApi')(app);
  require('./router/v1/menusApi')(app);
};
