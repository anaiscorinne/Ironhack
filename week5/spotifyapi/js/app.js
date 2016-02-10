$(document).on("ready", function () {
	$(".js-search-button").click(function(event) {
		event.preventDefault();
		searchArtist();
	});

	$(".js-artist-list").on('click', ".js-list-albums", function(event) {
		$('.js-album-list').empty();
		var artistID = $(event.currentTarget).data("artist-id");
		var artistName = $(event.currentTarget).text();
		artistName = artistName.trim();

		listAlbums(artistID, artistName);
		$(".js-album-modal").modal("show");
	});

	$(".js-album-list").on('click', ".js-artist-album", function(event) {
		$('.js-track-list').empty();
		var albumID = $(event.currentTarget).data("album-id");
		var albumName = $(event.currentTarget).text();
		albumName = albumName.trim();

		listTracks(albumID, albumName);
		$('.js-album-modal').modal('hide')
		setTimeout(function() {
      $(".js-track-modal").modal("show");
    }, 500);
	});
});

function searchArtist () {
	var searchTerm = $('.js-search-term').val()
	$.ajax({
		url: 'https://api.spotify.com/v1/search?type=artist&query=' + searchTerm,
		success: function (response) {
			var artists = response.artists.items;
			// alert("Your search was successful")
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
			<br>
			<button data-artist-id="${artist.id}" class="js-list-albums">${artist.name}</button>
			<br>
			<img src=${artist.images[2].url}>
		</li>
		`
		$(".js-artist-list").append(html);
	});
}

function listAlbums (artistID, artistName) {
$.ajax({
	url: `https://api.spotify.com/v1/artists/${artistID}/albums`,
	success: function (response) {
		//callback function bc waiting for server
		var albums = response.items;
		displayAlbums (albums, artistName);
	},
	error: function () {
		//also callback function
		alert("Could not find albums")
	},
});
}

function displayAlbums (albums, artistName) {
		var html = `
		<h2>${artistName}'s Albums:</h2>
	`
	$(".artist-title").html(html);
	
	albums.forEach( function (album) {

		var html = `
			<li>
				<button data-album-id="${album.id}" class="js-artist-album"> ${album.name} </button>
				<br><img src="${album.images[1].url}" >
			</li>
		`
		$(".js-album-list").append(html);
	});

		
}

function listTracks (albumID, albumName) {
	$.ajax({
	url: `https://api.spotify.com/v1/albums/${albumID}/tracks`,
	success: function (response) {
		//callback function bc waiting for server
		var tracks = response.items;
		displayTracks (tracks, albumName);
	},
	error: function () {
		//also callback function
		alert("Could not find tracks")
	},
});
}

function displayTracks(tracks, albumName) {
	var html = `
		<h2>${albumName}'s Albums:</h2>
	`
	$(".album-title").html(html);
	

		// $('.js-track-list').empty();
	tracks.forEach(function(track){
		var html = `
			<li>
				<a target="_blank" href="${track.preview_url}">${track.name}</a>
			</li>
		`
		$("js-track-list").append(html);
	});
	// $("js-track-modal").modal("show");
}

