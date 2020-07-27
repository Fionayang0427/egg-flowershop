'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  // 验证码
  router.get('/getverif', controller.verif.getverif);
  // 注册
  router.post('/register', controller.register.setregister);
  // 登陆
  router.post('/login', controller.login.login);
  // 获取用户信息
  router.get('/getUserinfo', controller.getUserinfo.getUserinfo);
  // 退出登陆用户
   router.get('/loginOut', controller.loginOut.loginOut);
   // 获取首页商品
	router.get('/home_goods', controller.home.home_goods);
	//加入购物车setcar
	router.get('/setcar', controller.car.setcar);
	// 获取购物车状况
  router.get('/getcar', controller.car.getcar);
  
  // 加入订单 setorder
  router.post('/setorder',controller.order.setorder)

   // 获取订单 getorder
  router.get('/getorder',controller.order.getorder)
};
