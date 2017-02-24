var fs = require('fs');
var path = require('path');
var http = require('http');

var pathname = __dirname + "/index.html";

var server = http.createServer(function(request, response) {
  fs.readFile(pathname, function(err, data){
      if(err){
        console.error(err);
        response.statusCode = 500;
        response.end('error');
      } else {
        var ext = path.parse(pathname).ext;
        response.setHeader('Content-type','text/html' );
        response.end(data);
      }
    });
});

server.listen(8000);
console.log("Server is listening");
