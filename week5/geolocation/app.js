if ("geolocation" in navigator) {
	//Browser has geolocation

	getUserLocation();
}

else {
	// Browser does not have geolocation
}


//-----------------Definitions Below----------------------

function getUserLocation () {
	navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
	//optional third parameter: optionsObj
}

function successCallback (position) {
	console.log("Success");
	console.log(position);
	console.log("Lat:", position.coords.latitude);
	console.log("Long:", position.coords.longitude);
}

function errorCallback (error) {
	console.log("Error:", error.message);
}