const debug = require('debug');
const http = require('http');
var name = "MyApp";

debug('booting %s', name);
http.createServer(function(req, res) {
  console.log(debug(req.method + ' ' + req.url));
  res.end('hello \n');
}).listen(3000, function() {
  debug('listening ...');
});
