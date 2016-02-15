$(document).on("ready", function () {
	$(".js-search-button").click(function(event) {
		event.preventDefault();
		searchTrack();
	});
	$(".btn-play").on("click", function(event){
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
	$('.js-audio').on('timeupdate', printTime);

	$(".js-artist").on("click", function () {
		var id = $(this).data("id");
		showArtist(id);
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

			var firstTrackArtistId = firstTrack.artists[0].id
			$(".js-artist").data("id", firstTrackArtistId);

		
		},
		error: function () {
			alert("Could not use search term.")
		},
	});
}

function printTime () {
  var current = $('.js-audio').prop('currentTime');
  $("progress").prop("value", current);
}

function showArtist (id) {
	$.ajax({
		url: `https://api.spotify.com/v1/artists/${id}`,
		success: function (response) {
			console.log(response);
			$('.js-artist-details').empty();
			$('.js-modal').modal("show");
			$('.js-artist-name').text(response.name);
			var artistImageUrl = response.images[1].url;
			var artistPopularity = response.popularity;
			var artistFollowers = response.followers.total;
			var html = `
				<li>Popularity: ${artistPopularity}% | Followers: ${artistFollowers}</li>
				<br>
				<li><img src="${artistImageUrl}" class="img-responsive"></img></li>
			`
			$('.js-artist-details').append(html);
		},
		error: function () {
			alert("showArtist failed");
		},
	});
}









