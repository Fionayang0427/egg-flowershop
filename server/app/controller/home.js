'use strict';

const Controller = require('egg').Controller;

class HomeController extends Controller {
	async home_goods() {
		var result=await this.ctx.service.home.home_goods();
		this.ctx.body=result;
	}
}

module.exports = HomeController ;