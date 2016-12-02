var http = require('http');
var handleRequest = function (request, response) {
  response.writeHead(200);
  
  response.end('Hello Jenkins Docker Plugin!');
  
};
var www = http.createServer(handleRequest);
www.listen(8080);
