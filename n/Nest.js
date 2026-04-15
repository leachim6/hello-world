const { Controller, Get } = require('@nestjs/common');

@Controller()
class AppController {
  @Get()
  getHello() {
    return 'Hello World';
  }
}

module.exports = { AppController };