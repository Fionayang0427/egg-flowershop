'use strict';
const Service = require('egg').Service;
class GetuserinfoService extends Service {
	async getUserinfo(email) {

		let sql = `select * from userinfo where email="${email}" `
		let result = await this.app.mysql.query(sql)
		return result;
	}
}
module.exports = GetuserinfoService;