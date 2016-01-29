var Questions = require("./lib/question.js");
var Quiz = require("./lib/quiz.js");

question1 = new Questions(1, "What is the capital of Germany", "Berlin");
question2 = new Questions(2, "What is the capital of Russia", "Moscow");
question3 = new Questions(3, "What is the capital of Kenya", "Nairobi");
question4 = new Questions(4, "What is the capital of Colombia", "Bogota");
question5 = new Questions(5, "What is the capital of India", "New Dehli");
question6 = new Questions(6, "What is the capital of Taiwan", "Taipei");
question7 = new Questions(7, "What is the capital of Cuba", "Havana");
question8 = new Questions(8, "What is the capital of Puerto Rico", "San Juan");
question9 = new Questions(9, "What is the capital of Argentina", "Buenos Aires");
question10 = new Questions(10, "What is the capital of Uruguay", "Montevideo");


var quiz = new Quiz([question1, question2, question3, question4, question5, question6, question7, question8, question9, question10]);

quiz.questionManager()
