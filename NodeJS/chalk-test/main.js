const chalk = require('chalk');
console.log(chalk.blue('Hello') + 'World' + chalk.red('!'));
console.log(chalk.blue.italic('Hello', 'World!', 'Foo', 'bar', 'biz', 'baz'));
console.log(chalk.styles.red);
console.log(chalk.styles.red.open
  + "Mahi is awesome :D"
  + chalk.styles.red.close);
console.log("No");
