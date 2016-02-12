$(document).on("ready", function () {
	$(".js-search-button").click(function(event) {
		event.preventDefault();
		searchTrack();
	});
	$(".btn-play").on("click", function(event){
		console.log("hey girlllll")
		event.preventDefault();
		if ($(event.currentTarget).hasClass('playing')) {
			$(event.currentTarget).removeClass('playing');
			$(event.currentTarget).addClass('disabled');
			$(".js-audio").trigger('pause');
		}
		else {
			$(event.currentTarget).removeClass('disabled');
			$(event.currentTarget).addClass('playing');
			$(".js-audio").trigger('play');
		}
	});
});





	// ---------------------------------------------------------------------

	function searchTrack () {
	var searchTerm = $('.js-search-term').val()
	$.ajax({
		url: 'https://api.spotify.com/v1/search?type=track&query=' + searchTerm,
		success: function (response) {
			console.log(response)
			var firstTrack = response.tracks.items[0]
			var firstTrackTitle = firstTrack.name
			var firstTrackArtistName = firstTrack.artists[0].name 
			var firstTrackAlbum = firstTrack.album.images[1].url
			var firstTrackUrl = response.tracks.items[0].preview_url
			
			$(".js-title-name").text(firstTrackTitle);
			$(".js-artist").text(firstTrackArtistName);
			$(".js-album-cover").prop("src", firstTrackAlbum);
			$(".js-audio").prop("src", firstTrackUrl);

		
		},
		error: function () {
			alert("Could not use search term.")
		},
	});
}