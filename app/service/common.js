'use strict';

const Service = require('egg').Service;
const fs = require('fs');
class CommonService extends Service {
  formateReturn(fData, status, msg) {
    const response = {
      data: fData || null,
      msg,
      status,
      success: status === 200 || status === '200'
    };
    return response;
  }
  async readJsonFile(filepath) {
    const fileData = await fs.readFileSync(filepath, 'utf8');
    return JSON.parse(fileData);
  }
  getRandomLetters(str, count) {
    let letter = '';
    const characters = str.split('');
    for (let i = 0; i < count; i++) {
      const randomIndex = Math.floor(Math.random() * characters.length);
      letter += characters[randomIndex];
      // 避免重复选择同一个字符，可以删除已经选择的字符
      // characters.splice(randomIndex, 1);
    }
    return letter.toString();
  }
}

module.exports = CommonService;
