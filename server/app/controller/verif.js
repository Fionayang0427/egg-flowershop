'use strict';

const Controller = require('egg').Controller;

class VerifController extends Controller {
	async getverif() {
		let verifimg = this.service.verify.getverif();
		
		verifimg.then((imgdata) => {
			// 缓存
			console.log(imgdata)
			this.ctx.session.verifText = imgdata.text;
			this.ctx.response.body = imgdata;
			console.log(this.ctx.session.verifText+"~~~")
		})
		
	}
}

module.exports = VerifController;
