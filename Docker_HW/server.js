var http = require ('http');

http.createServer(function(req, res) {
    res.write("Homework Success");
    res.end();
}).listen(8000);