
var user = {};
var responses = [];
function question1() {
	var name = prompt('What is your name?');
	user.name = name
}

question1();

function question2() {

  var firstQuestion = prompt('Does null === 0 ? (Yes or No)')

// why do you need to convert the answer to lowercase? To make sure it is actually equal to 'yes' - Uppercase and Lowercase letters have different values.
  if (firstQuestion.toLowerCase() === 'yes') {
    firstQuestion = true
  } else if (firstQuestion.toLowerCase() === 'no') {
    firstQuestion = false
  } else {
// what if the user writes something other than yes or no? 
// they will have to answer the question again
    alert("Please answer either Yes or No");
    return question2();
  }
  responses.push(firstQuestion); // add the true or false value to the responses array
}

question2();

function question3() {
  var js = prompt('What was the original name for JavaScript: Java, LiveScript, JavaLive, or ScriptyScript?');
  js = js.toLowerCase();
  switch (js) {
  	case 'java':
  		js = false;
  		break;
  	case 'livescript':
  		js = true;
  		break;
  	case 'javalive':
  		js = false;
  		break;
  	case 'scriptyscript':
  		js = false;
  		break;
  	default: 
  	 	alert("Please answer either Java, LiveScript, JavaLive, or ScriptyScript!");
    	return question3();
	}
 	responses.push(js);
}


question3();

function question4() {
  var prof = prompt('What year was Leon: The Professional released: 1990, 1994, 1996, 2001?');
  switch (prof) {
  	case '1990':
  		prof = false;
  		break;
  	case '1994':
  		prof = true;
  		break;
  	case '1996':
  		prof = false;
  		break;
  	case '2001':
  		prof = false;
  		break;
  	default: 
  	 	alert("Please answer either 1990, 1994, 1996, 2001!");
    	return question4();
	}
 	responses.push(prof);
}


question4();

function question5() {

  var faveColor = prompt('Is green your favorite color? (Yes or No)')

  if (faveColor.toLowerCase() === 'yes') {
    faveColor = true
  } else if (faveColor.toLowerCase() === 'no') {
    faveColor = false
  } else {
    alert("Please answer either Yes or No");
    return question5();
  }
  responses.push(faveColor);
}

question5();


function evaluate(responsesArray) {
	var totalTrue = [];
	var totalFalse = [];
	for (var i=0, length=responsesArray.length; i < length; i++) {
		if (responsesArray[i] == 'true') {
			return totalTrue.push("responsesArray[i]");
		} else {
			return totalFalse.push("responsesArray[i]");
		}
	}
user.totalTrue = totalTrue
user.totalFalse = totalFalse
}

evaluate(responses);



