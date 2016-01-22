JavaScript Exercises

"La" Loop

var i;
for (i = "la"; i <= "lalalalalalalalalala"; i = i + "la") {
console.log (i)
}

Blast Off Function

function BlastOff(n) {
    for (i = n;  i >= 0;  i--) {
        console.log(i);
    }
    console.log("Blast Off!");
}

var listnames = function(names) {
var listOfNames = "";
  for(var i = 0; i < names.length; i = i + 1) {
        if (i === names.length - 1) {
            listOfNames += (" and " + names[i]);
        } else if (i === names.length - 2) {
            listOfNames += names[i];
        } else {
            listOfName += (names[i] + ", ");
        }    
        }
        console.log(listOfNames);
  }
    listnames(names = ["Canada","Mexico","Turkey","Japan"]);

var country;

country = {
    name: "Uruguay",
    continent: "South America",
    capital: "Montevideo",
};

function obectToArray(countryToBreak) {
    var arrayOfCountries = [];
    for (var key in countryToBreak) {
        arrayOfCountries.push(countryToBreak[key]);
    }
    return arrayOfCountries;
}
var objectBreak = objectToArray(country);
console.log(objectBreak)
