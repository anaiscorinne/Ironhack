// var exampleArray = [2, -5, 10, 5, 4, -10, 0];

// function process(array) {
	
// 	var newArray = []
	
// 	for (var x = 0; x < array.length; x++) {
// 		if (array[x] + array[x] === 0) {
// 			newArray.push(array[x], array[x]);
// 			}
// 		for (var i = x + 1; i < array.length -1; i++) {
// 			if (array[x] + array[i] === 0) {
// 				newArray.push(array[x], array[i]);
// 				}
// 			};
// 		}
// 	return newArray
// 	}

// function processSecond(array) {
// 	var positions=[];
// 	array.forEach(function(value, i) {
// 		array.forEach(function(value2, j) {
// 			if (array[i]+array[j] === 0)
// 				positions.push(i + ', ' j + '; ')
// 		});
// 	});
// 	return positions
// }

// var results = processSecond(exampleArray);
// console.log(results);

var words, message;

words = [
    "dead",         // 1st -> d
    "bygone",       // 2nd -> y
    "landing",      // 3rd -> n
    "cheaply",      // 4th -> a
    "assumed",      // 5th -> m
    "incorrectly",  // 1st -> i
    "attention",    // 2nd -> t
    "agent"         // 3rd -> e
];



function decoder (arrayOfWords) {
    var i = 0;
    var charCounter = 0;
    var secretMessage = "";
    while (i < arrayOfWords.length){
        secretMessage += arrayOfWords[i].charAt(charCounter);
        charCounter = charCounter + 1;
        i++;
        if (charCounter % 5 === 0){
            charCounter = 0;
        };
    };
    return secretMessage
}


message = decoder(words);
console.log(message);

