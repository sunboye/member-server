module.exports = app => {
    const { router, controller } = app;
    router.get('/v1/logs', controller.logs.logsList);
};
