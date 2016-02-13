// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


PokemonApp.Pokemon = function (pokemonUri) {
	this.id = PokemonApp.Pokemon.idFromUri(pokemonUri);
};

PokemonApp.Pokemon.idFromUri = function (pokemonUri) {
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
};



PokemonApp.Pokemon.prototype.render = function () {
	console.log("Rendering pokemon: #" + this.id);
	// 
	var self = this;

	$.ajax({
		url:`/api/pokemon/${this.id}`,
		success: function (response) {
			self.info = response;

			console.log("Pokemon info:");
			console.log(self.info);

			var imageURI = self.info.sprites[0].resource_uri;
			var descriptionIndex = self.info.descriptions.length - 1
			var descriptionArrayPosition = self.info.descriptions[descriptionIndex]
			var descriptionURI = descriptionArrayPosition.resource_uri;
			console.log(descriptionArrayPosition)
			

			$(".js-pkmn-name").text(self.info.name);
			$(".js-pkmn-number").text(self.info.pkdx_id);
			$(".js-pkmn-height").text(self.info.height);
			$(".js-pkmn-weight").text(self.info.weight);
			$(".js-pkmn-hp").text(self.info.hp);
			$(".js-pkmn-attack").text(self.info.attack);
			$(".js-pkmn-defense").text(self.info.defense);
			$(".js-pkmn-sp-att").text(self.info.sp_attack);
			$(".js-pkmn-sp-def").text(self.info.sp_defense);

			$(".js-ev-button").data("pkmn-id", self.info.pkdx_id);

			$(".js-pkmn-types").empty();

			var typeArray = self.info.types
		 	typeArray.forEach( function (type) {
				var html = `
						<li>${type.name}</li>
					`
				$(".js-pkmn-types").append(html)
			});
			getPokemonImage(imageURI);
			getPokemonDescription(descriptionURI);

			$(".js-pokemon-modal").modal("show");

		},
		error: function () {
			alert(`Couldn't get the details for ${this.id} Pokemon`)
		}
	});
};

function getPokemonImage (imageURI) {
	$.ajax({
		url: `http://pokeapi.co/${imageURI}`,
		success: function (response) {
			console.log(response);
			displayImage(response);
		},
		error: function () {
			alert("Couldn't get the details.")
		}
	});
}

function displayImage (response) {
	// var imageURL = "http://pokeapi.co/" + response.image
	var html = `
		<img src="http://pokeapi.co${response.image}">
	`
	$(".js-pkmn-image").html(html)
}

function getPokemonDescription (descriptionURI) {
	$.ajax({
		url: `http://pokeapi.co/${descriptionURI}`,
		success: function (response) {
			console.log(response);
			displayDescription(response);
			// displayImage(response);
		},
		error: function () {
			alert("Couldn't get the details.")
		}
	});
}

function displayDescription (response) {
	$(".js-pkmn-description").text(response.description)
}


// =============================================================

$(document).on("ready", function () {
	$(".js-show-pokemon").on("click", function (event) {
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});
});