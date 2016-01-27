var decoder = require('./lib/decoder.js').decoder;
var sayHello = require('./lib/say_hello.js');

var words = ['Mouse', 'Tiger', 'Class', 'Summer', 'Miami'];
var result = decoder(words);
console.log(result);
sayHello();