module.exports = app => {
  const { router, controller } = app;
  router.get('/v1/getMenus', controller.menus.menus);
};
