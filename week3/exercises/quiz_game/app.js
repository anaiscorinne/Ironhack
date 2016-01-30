var Questions = require("./lib/question.js");
var Quiz = require("./lib/quiz.js");
var User = require("./lib/user.js")

question1 = new Questions(1, "What is the capital of Germany", "Berlin", 10, 10);
question2 = new Questions(2, "What is the capital of Russia", "Moscow", 2, 18);
question3 = new Questions(3, "What is the capital of Kenya", "Nairobi", 16, 4);
question4 = new Questions(4, "What is the capital of Colombia", "Bogota", 12, 8);
question5 = new Questions(5, "What is the capital of India", "New Dehli", 12, 8);
question6 = new Questions(6, "What is the capital of Taiwan", "Taipei", 18, 2);
question7 = new Questions(7, "What is the capital of Cuba", "Havana", 10, 10);
question8 = new Questions(8, "What is the capital of Puerto Rico", "San Juan", 4, 16);
question9 = new Questions(9, "What is the capital of Argentina", "Buenos Aires", 4, 16);
question10 = new Questions(10, "What is the capital of Uruguay", "Montevideo", 18, 2);
var user1 = new User("Anais", 0, 1);
var user2 = new User("Bianca", 0, 1);

var quiz = new Quiz([question1, question2, question3, question4, question5, question6, question7, question8, question9, question10]);

user1.userManager();
// quiz.questionManager(user1);
