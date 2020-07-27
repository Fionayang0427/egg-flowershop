'use strict';
const Service = require('egg').Service;
class HomeService extends Service {
	async home_goods() {
		
		const sql = `select * from goods limit 0,20`;
		const result = await this.app.mysql.query(sql);
		console.log(result)
		return result;
	}
}
module.exports = HomeService;
