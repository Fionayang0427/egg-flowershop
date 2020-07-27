'use strict';
const Service = require('egg').Service;
class LoginService extends Service {
	async login(params1) {
		console.log(params1)
		let sql = `select * from userinfo where email="${params1.email}" and passw="${params1.passw}"`
		let result = await this.app.mysql.query(sql)
		// console.log(result)
		return result;
	}
}
module.exports = LoginService;
