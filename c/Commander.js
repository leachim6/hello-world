const { Command } = require('commander');
const program = new Command();

program
  .name('Hello-World')
  .description('CLI to print hello world')
  .version('1.0.0');

program
  .command("print")
  .alias("-pr")
  .description("print hello world")
  .action(()=>{
    console.log("Hello World")
  })

program.parse();
