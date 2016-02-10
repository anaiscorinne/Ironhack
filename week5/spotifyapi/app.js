$(document).on("ready", function () {
	$(".js-search-button").click(function(event) {
		event.preventDefault();
		searchArtist();
	});
});

function searchArtist () {
	var searchTerm = $('.js-search-term').val()
	$.ajax({
		url: 'https://api.spotify.com/v1/search?type=artist&query=' + searchTerm,
		success: function (response) {
			var artists = response.artists.items;
			alert("Your search was successful")
			displayResults(artists);
		},
		error: function () {
			alert("Could not use search term.")
		},
	});
}

function displayResults (artists) {
	artists.forEach( function (artist) {
		var html = `
		<li>
			<h2>${artist.name}</h2>
			<img src=${artist.images[2].url}>
		</li>
		`
		$(".js-artist-list").append(html);
	});
}