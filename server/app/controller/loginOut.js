'use strict';

const Controller = require('egg').Controller;

class LoginOutController extends Controller {
	async loginOut() {
		this.ctx.session=null;//清除缓存
		this.ctx.body=''
	}
}

module.exports = LoginOutController ;