var exampleArray = [2, -5, 10, 5, 4, -10, 0];

function process(array) {
	
	var newArray = []
	
	for (var x = 0; x < array.length; x++) {
		if (array[x] + array[x] === 0) {
			newArray.push(array[x], array[x]);
			}
		for (var i = x + 1; i < array.length -1; i++) {
			if (array[x] + array[i] === 0) {
				newArray.push(array[x], array[i]);
				}
			};
		};
	return newArray
	}

var results = process(exampleArray);
console.log(results);
