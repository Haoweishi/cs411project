const express = require('express')
const body_parser = require('body-parser');
const mysql = require('mysql');
const fs = require('fs');
const https = require('https');
const http = require('http');
const app = express();
const fileUpload = require("express-fileupload");
const port = 3000; // DO NOT CHANGE!!! IPTABLES Routes HTTP from 80 -> 3000 only.

var ssloptions = {
  key: fs.readFileSync('./ssl/private.key'),
  cert: fs.readFileSync('./ssl/certificate.crt'),
  ca: fs.readFileSync('./ssl/ca_bundle.crt')
};

var pool  = mysql.createPool({
  connectionLimit : 10,
  host            : 'localhost',
  user            : 'root',
  password        : '',
  database        : 'virtualfs'
});

app.use(fileUpload({
  limits: { fileSize: 50 * 1024 * 1024 }, createParentPath: true
}));

var formparser = body_parser.urlencoded({ extended: false });

app.get('/style.css', (req, res) => res.sendFile(__dirname + "/style.css"));

app.get('/', (req, res) => res.sendFile(__dirname + "/index.html"));

app.post('/api/signup', formparser, function(req, res) {
	var response = {success: false, message :""}
	
	if (!req.body.Email || !req.body.Username || !req.body.Pass || req.body.Email == "" || req.body.Username == "" || req.body.Pass == "") {
		response.message = "Form incomplete!";
		res.send(response);
		return;
	}
	
	var query = "CALL mkuser('" + req.body.Email + "', ' "+ req.body.Username + "', '" + req.body.Pass + "');";
	pool.query(query, function(error, results, field){
		if (!error) {
			response.message = "New user: " + req.body.Username + " created.";
			response.success = true;
			res.send(response);
			return;
		} else {
			if (error.errno == 1062) {
				response.message = "There is an existing user with same email!";
				res.send(response);
			} else {
				console.log (error);
				response.message = "Database error encountered. Owner: Check Logs";
				res.send(response);
			}
			return;
		}
	});
	
	return;
});


app.post('/api/getinfo', formparser, function(req, res) {
	var response = {success: false, message :"", details: null}
	
	if (!req.body.Email || !req.body.Pass || req.body.Email == "" || req.body.Pass == "") {
		response.message = "Form incomplete!";
		res.send(response);
		return;
	}
	
	var query = "CALL login('" + req.body.Email + "','" + req.body.Pass + "', '0.0.0.0');";
	pool.query(query, function(error, results, field){
		if (!error) {
			if (results[0].length == 0) {
				response.message = "Invalid Credentials Entered";
				res.send(response);
			} else {
				response.success = true;
				response.details = results[0][0];
				res.send(response);
			}
		} else {
			console.log (error);
			response.message = "Database error encountered. Owner: Check Logs";
			res.send(response);
			return;
		}
	});
	
	return;
});

app.post("/api/uploadfile", formparser, function(req, res) {
	var response = {success: false, message :""}
	if (!req.files || !req.body.dir || !req.body.Email || !req.body.Pass || req.body.Email == "" || req.body.Pass == "") {
		response.message = "Malformed Request";
		res.send(response);
		return;
	} else {
		var inputfile = req.files.input;
		var randprefix = Math.floor(Math.random() * (99999 - 0) + 0);
		var finalpath = './userupload/' + randprefix.toString() + inputfile.name;
		var query = "";
		
		if (!req.body.replaceid) {
			query = "CALL onnewfileupload('" + inputfile.name + "', '" + finalpath + "', '" + req.body.Email + "', '" + req.body.Pass + "' , " + req.body.dir + ", -1);";
		} else {
			query = "CALL onnewfileupload('" + inputfile.name + "', '" + finalpath + "', '" + req.body.Email + "', '" + req.body.Pass + "' , " + req.body.dir + ", " + req.body.replaceid + ");";
		}
		
		
		pool.query(query, function(error, results, field) {
			if (!error) {
				inputfile.mv(finalpath);
				response.success = true;
				response.message = "File uploaded.";
				res.send(response);
			} else {
				if (error.errno == 1644) {
					response.message = error.sqlMessage;
				} else { 
					response.message = "MYSQL error, owner, check log.";
					console.log(error);
				}
				res.send(response);
			}
		});
	}
});

app.get("/api/downloadfile", function(req, res) {
	var response = "";
	
	if (!req.query.Email || req.query.Email == "" || !req.query.Token || !req.query.fid) {
		response = "Invalid referral link";
		res.send(response);
		return;
	}
	
	var query = "CALL download('" + req.query.Email + "', '" + req.query.fid + "', '" + req.query.Token + "');";
	
	pool.query(query, function(error, results, field) {
			if (!error && results[0].length > 0) {
				var path = results[0][0].FilePath;
				res.sendFile(path, { root : __dirname});
			} else {
				if (error) {
					console.log(error.sqlMessage); 
				}
				response = "The requested file doesn't exist anymore or you don't have permissions to access it.";
				res.send(response);
			}
	});
});

app.get("/api/randomdownload", function(req, res) {
	var response = "";
	
	if (!req.query.Email) {
		response = "Invalid referral link";
		res.send(response);
		return;
	}
	
	var query = "CALL randomrecommender('" + req.query.Email + "');";
	
	
	pool.query(query, function(error, results, field) {
			if (!error && results[0] != null) {
				var path = results[0][0].FilePath;
				res.sendFile(path, { root : __dirname});
			} else {
				if (error) {
					console.log(error.sqlMessage); 
				}
				response = "There are no new files you might be interested at the moment.";
				res.send(response);
			}
	});
});

app.get("/api/listfiles", formparser, function(req, res) {
	var response = {success: false, message :"", details: null}
	
	if (!req.query.Email || !req.query.Token || req.body.Email == "" || req.body.Token == "" || req.body.fid == "") {
		response.message = "Form incomplete!";
		res.send(response);
		return;
	}
	
	var query = "";
	
	if (!req.query.titlekeyword) {
		query = "CALL viewfiles('" + req.query.Email + "', "+ req.query.fid + " , '" + req.query.Token + "', '')";
	} else {
		query = "CALL viewfiles('" + req.query.Email + "', "+ req.query.fid + " , '" + req.query.Token + "', '" + req.query.titlekeyword + "')";
	}
	
	console.log(query);

	pool.query(query, function(error, results, field) {
		if (!error) {
			response.success = true;
			response.details = results[0];
			res.send(response);
			return;
		} else {
			response.message = "Unable to retrieve files at the moment, or you do not have permissions for the requested items.";
			console.log(error);
			res.send(response);
			return;
		}
	});
});

app.post("/api/deletefile", formparser, function(req, res) {
	var response = {success: false, message :""}
	if (!req.body.Email || !req.body.Pass || req.body.Email == "" || req.body.Pass == "" || !req.body.fid || !req.body.dir) {
		response.message = "Form incomplete!";
		res.send(response);
		return;
	}
	
	var query = "CALL deleteFile('"+req.body.Email+"', " + req.body.dir + ",  "+ req.body.fid +", '"+req.body.Pass+"')";

	pool.query(query, function(error, results, field){
		if (!error) {
			response.success = true;
			response.message = "File deleted";
			res.send(response);
		} else {
			console.log(error.sqlMessage);
			response.message = "File cannot be deleted at this time.";
			res.send(response);
			return;
		}
	});
});

app.get("/api/filelister", function(req, res) {
	var fromtime = "2019-12-31 00:00:00";
	var totime = "2031-01-01 00:00:00";
	if (req.query.fromdate) {
		fromtime = req.query.fromdate;
	}
	
	if (req.query.todate) {
		totime = req.query.todate;
	}
	
	var query = "CALL listfiles('"+ fromtime + "', '" + totime + "');";
	pool.query(query, function(error, results, field) {
		if (!error) {
			res.send(results[0]);
		} else {
			res.send([]);
		}
	});
});

app.get("/filebrowser", function(req, res) {
	res.sendFile(__dirname + "/filebrowser.html");
});

//app.listen(port, () => console.log(`CS 411 app started, port:${port}`))
http.createServer(function (req, res) {
    res.writeHead(301, { "Location": "https://" + req.headers['host'] + req.url });
    res.end();
}).listen(port);

https.createServer(ssloptions, app).listen(port + 1);

