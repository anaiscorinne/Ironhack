$(document).on('ready', function () {
	$(".js-ev-button").on("click", function (event){
		var $button = $(event.currentTarget);
		var pokemonID = $button.data("pkmn-id");

		$.ajax({
			url: `/api/pokemon/${pokemonID}`,
			success: function (response) {
				var evolutions = new PokemonApp.PokemonEvolutions(pokemonID, response);
				evolutions.render();
			},
			error: function () {
				alert("no pokemon info");
			}
		});
		$('.js-pokemon-modal').modal('hide')
		setTimeout(function () {
			$(".js-ev-modal").modal("show");
		}, 500);
	});
});

// $(".js-show-pokemon").on('click', ".js-ev-button", function(event) {
// 		var $button = $(event.currentTarget).data("id");
// 		var pokemonURI = $(event.currentTarget).text();
// 		// pokemonName = pokemonName.trim();

// 	});

//------------------------------------------------------------------

PokemonApp.PokemonEvolutions = function (id, info) {
	this.id = id;
	this.info = info;
};

PokemonApp.PokemonEvolutions.prototype.render = function () {
	console.log("rendering evolutions");
	$(".js-ev-title").text(`Evolutions for ${this.info.name}`);
	$(".js-ev-loading").show();
	$(".js-ev-list").empty();

	this.info.evolutions.forEach(function (ev){
		$.ajax({
			url: ev.resource_uri,
			success: function (response) {
				console.log("NAME-", response.name)
				console.log("ID-", response.pkdx_id)

				$(".js-ev-loading").hide();
				var html = `
					<li class="js-ev-li-${response.pkdx_id}">
						${response.name}
					</li>
				`;
				$(".js-ev-list").append(html);

				PokemonApp.PokemonEvolutions.getSprite(response.pkdx_id, response.sprites[0].resource_uri);

				},

			error: function (error) {
				alert(`Couldn't get the details for ${ev.to} evolution.`)
			}
		});
	});
	// $(".js-pokemon-modal").modal("hide");
	// $(".js-ev-modal").modal("show");
}


PokemonApp.PokemonEvolutions.getSprite = function (pokemonID, uri) {
	$.ajax({
		url: uri,
		success: function(response) {
			console.log(response)
			$(`.js-ev-li-${pokemonID}`).append(`<img src="http://pokeapi.co${response.image}">`);
		},
		error: function () {
			alert("Error getting sprite")
		}
	});
}





