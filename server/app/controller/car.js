'use strict';

const Controller = require('egg').Controller;

class CarController extends Controller {
	async setcar() {
		// console.log(this.ctx.request.query)
		
		if(this.ctx.session.email){
			// 登陆过，添加商品到购物车，返回添加成功的标识
			var result=await this.ctx.service.car.setcar(this.ctx.request.query);
			this.ctx.body={
				code:2000,
				info:"添加到购物车成功",
				
			}
			
		}else{
			// 未登录，返回提示登陆的标识
			this.ctx.body={
				code:4001,
				info:"未登录"
			}
		}
		
	}
	async getcar() {
		if(this.ctx.session.email){
			// 登陆过，返回当前用户购物车商品信息
			var result=await this.ctx.service.car.getcar(this.ctx.session.email);
			this.ctx.body={
				code:2000,
				info:result
			};
			
		}else{
			// 未登录，返回提示登陆的标识
			this.ctx.body={
				code:4001,
				info:"未登录"
			}
		}
		
	}
}

module.exports =CarController;