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

  setupAutocomplete();
  var positions = JSON.parse(window.localStorage.getItem("addedLocationMarkers"));
  loadMarkers(positions);
}

function createMarker(position, address) {
  var marker = new google.maps.Marker({
   position: position,
   map: map
 });
 
 var infowindow = new google.maps.InfoWindow({
    content: `<p>Address: ${address}</p>`
  });

  marker.addListener("click", function() {
    infowindow.open(map, marker);
  })

  if (localStorage.getItem('addedLocationMarkers')) {
    var jsonMarkers = JSON.parse(window.localStorage.getItem('addedLocationMarkers'));
    jsonMarkers.push(position);
    var newStringMarkers = JSON.stringify(jsonMarkers);
    window.localStorage.setItem('addedLocationMarkers', newStringMarkers);
  }
  else {
    var markers = [];
    markers.push(position);
    var stringMarkers = JSON.stringify(markers);
    window.localStorage.setItem('addedLocationMarkers', stringMarkers)
  }
 
}

function setupAutocomplete(){
  var input = $('#get-places')[0];
  var autocomplete = new google.maps.places.Autocomplete(input);
  autocomplete.addListener('place_changed', function(){
    var place = autocomplete.getPlace();
    var address = place.formatted_address;
    if (place.geometry.location) {
      // createMarker();
      createMarker(place.geometry.location, address);
      map.setCenter(place.geometry.location);
      map.setZoom(17);
    } else {
      alert("The place has no location...?")
    }
  });
}

function loadMarkers(markers) {
  var uniqueMarkers = [];
  $.each(markers, function(i, el){
      if($.inArray(el, uniqueMarkers) === -1) uniqueMarkers.push(el);
  });

  uniqueMarkers.forEach(function(position) {
    var marker = new google.maps.Marker({
      position: position,
      map: map
    });

    var geocoder = new google.maps.Geocoder();
    var latlng = new google.maps.LatLng(position.lat, position.lng);

    geocoder.geocode({'latLng': latlng}, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) {
              //we'll do cool crap here
              var address = results[0].formatted_address;
      }
      var infowindow = new google.maps.InfoWindow({
        content: `<p>Address: ${address}</p>`
      });

      marker.addListener("click", function() {
        infowindow.open(map, marker);
      })
    });
  })
}



