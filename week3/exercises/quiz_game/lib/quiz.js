var read = require('read');

var Quiz = function(questionsArray) {
	this.questionsArray = questionsArray;
	this.i = 0;
	this.currentQuestion = this.questionsArray[this.i];
	this.totalPoints = 0;
	this.negPoints = this.currentQuestion.negPoints;
	this.posPoints = this.currentQuestion.posPoints;
	var randomnumber = Math.floor(Math.random()*11);
	this.bonusQuestion = this.questionsArray[randomnumber-1];
	
}

Quiz.prototype.questionManager = function() {
	if (this.i < this.questionsArray.length) {
		var options = {
			prompt: `Question ${this.i+1}: ${this.currentQuestion.question}?`
		}
		read(options, this.checkAnswer.bind(this));
	}
	else {
		console.log("You now know some capitals!!")
		console.log("CONGRATS!!")
		console.log(`Total points: ${this.totalPoints}.`)
	}
}

Quiz.prototype.checkAnswer = function(error, userAnswer) {
	if (error) {
		console.log(error.message);
	}
	else if (userAnswer === this.currentQuestion.answer) {
		this.i++;
			if (this.bonusQuestion === this.currentQuestion) {
				this.totalPoints += (this.posPoints * 2);
				this.currentQuestion = this.questionsArray[this.i]
				console.log("You got the Bonus! Double points for you!!");
				console.log("---------------");
				this.questionManager();
			}
			else { 
				this.totalPoints += this.posPoints;
				this.currentQuestion = this.questionsArray[this.i]
				console.log("That's right!");
				console.log("---------------");
				this.questionManager();
			}
	}
	else {
			if (this.bonusQuestion === this.currentQuestion) {
				this.totalPoints -= (this.negPoints * 2);
				console.log("You're wrong, and that BONUS just lost you double points!");
				this.questionManager();
			}
			else {
				this.totalPoints -= this.negPoints;
				console.log("You're wrong, try again!");
				this.questionManager();
			}
	}
}

module.exports = Quiz;
	


module.exports = Quiz;