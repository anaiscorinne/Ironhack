var map;

if ("geolocation" in navigator){
  navigator.geolocation.getCurrentPosition(onLocation, onError);
}

function onLocation(position){
  // We can't just directly feed the position into our google map
  // The objects are formatted differently, google maps is looking for
  // an object with "lat" and "lng" keys.
  var myPosition = {
    lat: position.coords.latitude,
    lng: position.coords.longitude
  };
  createMap(myPosition);
}

function onError(err){
  console.log("What are you using, IE 7??", err);
}

function createMap(position){
  var mapOptions = {
    center: position,
    zoom: 17
    };
  map = new google.maps.Map($('#map')[0], mapOptions);

  var geocoder = new google.maps.Geocoder();
  var latlng = new google.maps.LatLng(position.lat, position.lng);

  geocoder.geocode({'latLng': latlng}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
            var address = results[0].formatted_address;
    }
    createMarker(position, address);
  });

  setupAutoComplete();
  // var positions = JSON.parse(window.localStorage.getItem("addedLocationMarkers"));
  // loadMarkers(positions);
}

function createMarker(position, address) {
  var marker = new google.maps.Marker({
   position: position,
   map: map,
 });
 
 var infowindow = new google.maps.InfoWindow({
    content: `<p>Address: ${address}</p>`
  });

  marker.addListener("click", function() {
    infowindow.open(map, marker);
  })
}

function setupAutocomplete(){
  var input = $('#get-places')[0];
  var autocomplete = new google.maps.places.Autocomplete(input);
  autocomplete.addListener('place_changed', function(){
    var place = autocomplete.getPlace();
    if (place.geometry.location) {
      // createMarker();
      map.setCenter(place.geometry.location);
      map.setZoom(17);
    } else {
      alert("The place has no location...?")
    }
  });
}





