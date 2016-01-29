var Questions = require("./lib/questions.js");
var Quiz = require("/lib/quiz.js");

question1 = new Question(1, "What is the capital of Germany", "Berlin");
question2 = new Question(2, "What is the capital of Russia", "Moscow");
question3 = new Question(3, "What is the capital of Kenya", "Nairobi");
question4 = new Question(4, "What is the capital of Colombia", "Bogota");
question5 = new Question(5, "What is the capital of India", "New Dehli");
question6 = new Question(6, "What is the capital of Taiwan", "Taipei");
question7 = new Question(7, "What is the capital of Cuba", "Havana");
question8 = new Question(8, "What is the capital of Puerto Rico", "San Juan");
question9 = new Question(9, "What is the capital of Argentina", "Buenos Aires");
question10 = new Question(10, "What is the capital of Uruguay", "Montevideo");


quiz = new Quiz([question1, question2, question3, question4, question5, question6, question7, question8, question9, question10]);



