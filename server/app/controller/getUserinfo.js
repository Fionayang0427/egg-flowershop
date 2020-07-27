'use strict';

const Controller = require('egg').Controller;

class GetserinfoController extends Controller {
	async getUserinfo() {
		// 1.先取缓存
		if(this.ctx.session.email){
			let result=await this.ctx.service.getUserinfo.getUserinfo(this.ctx.session.email);
			this.ctx.body={
				code:2000,
				info:result
			}
		}else{
			this.ctx.body={
				code:4001,
				info:"未登录"
			}
		}
		
	}
}

module.exports = GetserinfoController;