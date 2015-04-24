var port 		= 8000;
var source 		= 'tar';

var path 		= require('path');

var express 	= require('express');
var app 		= express();
var http 		= require('http').Server(app);

app.use('/', express.static( path.resolve( __dirname, source ) ) );

http.listen(port, function() {
	console.log( 'listening on *:' + port );
})