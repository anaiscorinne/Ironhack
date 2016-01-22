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