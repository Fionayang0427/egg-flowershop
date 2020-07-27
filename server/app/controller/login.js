'use strict';

const Controller = require('egg').Controller;

class LoginController extends Controller {
	async login() {
		// console.log(this.ctx.request.body);//{ email: '459438430@qq.com', passw: '123' }
		 let result= await this.ctx.service.login.login(this.ctx.request.body);
		 // console.log(result)
		 if(result[0]){
			 // 缓存邮箱
			 this.ctx.session.email=this.ctx.request.body.email
			 this.ctx.body={
				 code:2000,
				 info:"登陆成功"
			 }
		 }else{
			 this.ctx.body={
				 code:4001,
				 info:"登陆信息错误"
			 }
		 }
		
		
	}
}

module.exports = LoginController ;