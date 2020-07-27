'use strict';

const Service = require('egg').Service;

class OrderService extends Service {
 
  async setorder(arr) {
      // console.log(obj)
      
      for(let i=0;i<arr.length;i++){
        // arr[i]
        let allprice=(Number(arr[i].price))*(Number(arr[i].gcount));
        let stime=arr[i].otime.toString()
        var sql=`insert into myorder(img,title,gcount,allprice,email,otime) values ("${arr[i].src}","${arr[i].title}",${arr[i].gcount},${allprice},"${this.ctx.session.email}","${stime}")`;
        
        var result=await this.app.mysql.query(sql)
        
      }
     
      return result;
      
      
  }
  
  async getorder() {
    var sql=`select * from myorder where email="${this.ctx.session.email}"`;
    var result=await this.app.mysql.query(sql);
    console.log(result)
    return result;
}
}

module.exports = OrderService;
