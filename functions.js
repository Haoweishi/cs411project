var signuphandler =  function(req, res) {
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
}