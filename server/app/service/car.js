'use strict';
const Service = require('egg').Service;
class CarService extends Service {
	async setcar(query1) {
		// 邮箱也是独一无二的
		console.log(query1.flag)
		//清空购物车
		if(query1.flag == 3){
			sql = `DELETE  FROM  car  WHERE email="${this.ctx.session.email}"`

		}else{


		const fresult = await this.app.mysql.query(`select * from car where gid= ${query1.gid} and email="${this.ctx.session.email}"`)
		// console.log(fresult[0].gcount)
		// ${query1.gcount}
		if (fresult.length == 0) {
			var sql = `insert into car (email,gid,gcount) values ("${this.ctx.session.email}",${query1.gid},1)`
		} 
		else {
			if (query1.flag == 1) {
				fresult[0].gcount += 1;
			} else if (query1.flag == 2) {
				fresult[0].gcount -= 1;

			} else {
				fresult[0].gcount = query1.gcount
			}

			sql = `UPDATE  car  SET gcount =${fresult[0].gcount}  WHERE gid= ${query1.gid} and email="${this.ctx.session.email}"`
		}
		

	}

		// if(query1.gcount==1){
		// 	var sql = `insert into car (email,gid,gcount) values ("${this.ctx.session.email}",${query1.gid},${query1.gcount})`
		// 	if(query1.gcount==1&&query1.flag){
		// 	sql = `UPDATE  car  SET gcount =${query1.gcount}  WHERE gid= ${query1.gid} and email="${this.ctx.session.email}"`

		// 	}
		// }else {
		// 	sql = `UPDATE  car  SET gcount =${query1.gcount}  WHERE gid= ${query1.gid} and email="${this.ctx.session.email}"`

		// }



		const result = await this.app.mysql.query(sql)//查询商品

		return result;
	}

	async getcar(email) {
		// 查当前用户的购物车所有商品的gid
		const sql1 = `select * from car where email="${email}" `
		const arr = await this.app.mysql.query(sql1);

		// console.log(arr)
		// return arr;

		var idarr = [];

		for (let i = 0; i < arr.length; i++) {
			// 找出所有id，统一查
			idarr.push(arr[i].gid);




		}

		let str = idarr.toString();
		// console.log(idarr+"666")
		let sql2 = `select * from goods where gid in (${str})`
		let result = await this.app.mysql.query(sql2)//查询商品
		// console.log("查到的"+result)
		// arr 
		let carobj = {
			carr: arr,
			result: result
		}
		return carobj;

	}
}
module.exports = CarService;