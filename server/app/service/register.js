'use strict';
const Service = require('egg').Service;
const svgCaptcha = require('svg-captcha');
class UserService extends Service {
	//验证邮箱
	async verifEmail(email) {
		let sql=`select * from userinfo where email="${email}"`
		let result=await this.app.mysql.query(sql)
		// console.log(result,"后端正常")
		if(result[0]){//查到已经有该邮箱
			return true;
		}else{
			return false;
		}
	}
	// 注册
	async register(userinfo) {
		let sql=`insert into userinfo (username,email,passw,cardimg) 
		values("${userinfo.username}","${userinfo.email}","${userinfo.passw}","${userinfo.cardimg}") `;
		await this.app.mysql.query(sql);
	}
}
module.exports = UserService;
