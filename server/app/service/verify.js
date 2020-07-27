'use strict';
const Service = require('egg').Service;
const svgCaptcha = require('svg-captcha');
class VerifService extends Service {
    // 产生验证码
    async getverif() {
        const verifImg = svgCaptcha.create({
            size: 4,
            fontSize: 50,
            width: 100,
            height: 40,
            bacground: '#cc9966'
        });
        this.ctx.session.code = verifImg.text;
        return verifImg;
    }
}
module.exports = VerifService;