$(document).on("ready", function () {
	$('.where-am-i').on('click', function () {
	if ("geolocation" in navigator) {
		getUserLocation();
	}
	else {
		alert("Geolocation is not available")
	}
	});
});


//-----------------Definitions Below----------------------

function getUserLocation () {
	// console.log("Getting location...")
	navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
	//optional third parameter: optionsObj - var above
}

function successCallback (position) {
	var latitude = position.coords.latitude
	var longitude = position.coords.longitude

	displayMap(latitude, longitude);
	// console.log("Lat:", position.coords.latitude);
	// console.log("Long:", position.coords.longitude);
	// $(".js-lat-value").text(position.coords.latitude);
	// $(".js-lng-value").text(position.coords.longitude);
}

function errorCallback (error) {
	console.log("Getting location failed:", error.message);
}

function displayMap(lat, lng) {
	var latitude = Number(lat);
	var longitude = Number(lng);
	var mapDiv = document.getElementById('map');
        var map = new google.maps.Map(mapDiv, {
          center: {lat: latitude, lng: longitude},
          zoom: 18
        });

}
