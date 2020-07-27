'use strict';

const Controller = require('egg').Controller;

class OrderController extends Controller {
  async setorder() {

      //   console.log(this.ctx.request.body);
        let result=await this.ctx.service.order.setorder(this.ctx.request.body);
        this.ctx.body=result
        
   
    
  }
  async getorder() {
        let result=await this.ctx.service.order.getorder();
        this.ctx.body=result
}
}

module.exports = OrderController;
