var fs = require("fs");




fs.readfile("filename", "utf8", function (error, contents) {
	if (error !== null) {
		console.log("This is the ERROR")
		console.log(error);
	}
	else {
		console.log(contents.length);

	var htmlLines = contents.split("\n");

	console.log(htmlLines);
	}
});