var read = require('read');
var Quiz = require("./quiz.js");

var User = function(exUserName, totalPoints, questionPosition) {
	this.exUserName = exUserName;
	this.totalPoints = totalPoints;
	this.questionPosition = questionPosition;
};

User.prototype.userManager = function() {
	var askQuestion = {
		prompt: "Are you a new user?"
	};
	read(askQuestion, this.checkIfUser.bind(this));
};

User.prototype.checkIfUser = function(error, yesOrNo) {
	// var yesOrNo = yesOrNo.toLowerCase();
	if (error) {
		console.log(error.message);
	}
	else if (yesOrNo === "yes") {
		this.promptMakeUser();
	}
	else if (yesOrNo === "no") {
		this.promptUser();
	}
	else {
		console.log("Please enter yes or no.")
		this.userManager();
	};
};

User.prototype.promptUser = function() {
	var askUserName = {
		prompt: "Please enter your username:"
	};
	read(askUserName, this.checkUser.bind(this));
};

User.prototype.checkUser = function(error, userName) {
	if (error) {
		console.log(error.message);
	}
	else if (userName === this.exUserName) {
		console.log(`Welcome back ${this.exUserName}`);
		quiz.questionManager()
	}
	else {
		console.log("That username does not exist.");
		this.userManager();
	};
};

User.prototype.promptMakeUser = function(){
	var askNewUserName = {
		prompt: "Please enter a username:"
	};
	read(askNewUserName, this.makeUser.bind(this));
};

User.prototype.makeUser = function(error, newUserName) {
	if (error) {
		console.log(error.message);
	}
	else if (newUserName === this.exUserName) {
		console.log("That username already exists!");
		this.promptMakeUser();
	}
	else {
		this.exUserName = newUserName;
		this.totalPoints = 0;
		this.questionPosition = 1;
		console.log(`Welcome to the game ${this.exUserName}`);
	};
};

// user.prototype.startGame = function() {

// }


module.exports = User
