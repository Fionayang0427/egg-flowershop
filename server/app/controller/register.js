'use strict';

const Controller = require('egg').Controller;
const fs = require("fs");
var path=require("path");
class SetregisterfController extends Controller {
	async setregister() {
		// console.log(this.ctx.request.body,this.ctx.request.files);
		// let oldpath = this.ctx.request.files[0].filepath;
		// let newpath = path.dirname(__dirname)+"/public/upload/" + path.basename(ctx.request.files[0].filepath);
		// console.log(newpath)
		// fs.rename(oldpath, newpath, () => {});
		// await fs.copyFileSync(file.filepath, to);
		// this.ctx.request.body.cardimg = "upload/" + this.ctx.request.files[0].filename;
		const {ctx} = this;
		//记得去public下创建好upload文件夹
		const dest = '/public/upload/';
		const file = ctx.request.files[0];
		console.log(ctx.request.files);
		//path.dirname  : /egg-mysql/app/controller-----/egg-mysql/app/
		let to = path.dirname(__dirname) + dest + path.basename(file.filepath);
		// 处理文件，放到指定的目录
		await fs.copyFileSync(file.filepath, to);
		// 存放好文件后，删除原文件数据
		fs.unlinkSync(file.filepath);
		let cluster = this.app.config.cluster.listen;
		this.ctx.request.body.cardimg = `http://localhost:${cluster.port}${dest}${path.basename(file.filepath)}`;
		// 返回图片路径
		// ctx.body = {
		// 	code: 0,
		// 	msg: "",
		// 	src:`http://localhost:${cluster.port}${dest}${path.basename(file.filepath)}`
		// };
		
		
		// console.log(this.ctx.request.body.verif);
		console.log("-----------------session")
		console.log(this.ctx.session.verifText)//undefined   
		// 开始录入数据库
		// 1.判断验证码
		if (this.ctx.session.verifText.toUpperCase()!= this.ctx.request.body.verif.toUpperCase()) {
			// console.log("no")
			// console.log(this.ctx.session.verifText.toUpperCase())
			// console.log(this.ctx.request.body.verif)

			this.ctx.response.body = {code: 4001,info: "验证码错误"}
			
		} else {//2.验证邮箱是否注册过
			var re = await this.ctx.service.register.verifEmail(this.ctx.request.body.email);
			if (re) {
				this.ctx.response.body = {code: 4002,info: "此邮箱已被注册"}
			} else {  //3.注册成功
				await this.ctx.service.register.register(this.ctx.request.body);
				this.ctx.response.body = {code: 2000,info: "注册成功"}
			}
		}
	}

}
module.exports = SetregisterfController;
// else if (0) { // 2.数据库中没有填入的邮箱
// 			this.ctx.response.body = {
// 				code: 4002,
// 				info: "此邮箱已被注册"
// 			}
// 		} else { //3.成功注册
// 			this.ctx.response.body = {
// 				code: 2000,
// 				info: "注册成功"
// 			}
// 		}
