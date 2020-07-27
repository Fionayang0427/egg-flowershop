/* eslint valid-jsdoc: "off" */

'use strict';

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
	config.keys = appInfo.name + '_1591962749611_1634';

	// add your middleware config here
	config.middleware = [];


	// 配置服务器基本信息
	config.cluster = {
		listen: {
			path: '',
			port: 8090,
			//       hostname: 'admin.jianmian.com',//默认localhost和ip地址,上线时用0.0.0.0
		}
	};


	//输入框安全
	config.security = {
		csrf: {
			enable: false,
			ignoreJSON: true
		}
	}


	//数据库配置
	config.mysql = {
		client: {
			host: "localhost",
			port: "3306",
			user: "root",
			password: "123",
			database: "flowerplus"
		},
	}


	// 上传文件
	config.multipart = {
		mode: 'file'
	};


	// 跨域的配置
	config.cors = {
		origin: 'http://127.0.0.1:8090',
		//   origin: '*',
		allowMethods: 'GET,HEAD,PUT,POST,DELETE,PATCH',
		credentials: true
	};


	// session的配置
	config.session = {
		key: 'EGG_SESS',
		maxAge: 24 * 3600 * 1000, // 1 天
		httpOnly: true,
		encrypt: true,
	};



	// add your user config here
	const userConfig = {
		// myAppName: 'egg',
	};

	return {
		...config,
		...userConfig,
	};
};
