module.exports = app => {
  const { router, controller } = app;
  router.get('/v1/vipers', controller.vipers.vipers);
  router.post('/v1/vipers/oprate', controller.vipers.viperOptate);
};
