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