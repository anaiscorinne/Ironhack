// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


PokemonApp.Pokemon = function (pokemonUri) {
	this.id = PokemonApp.Pokemon.idFromUri(pokemonUri);
};

PokemonApp.Pokemon.prototype.render = function () {
	console.log("Rendering pokemon: #" + this.id);
	var self = this;
	$.ajax({
		url:`/api/pokemon/${this.id}`,
		success: function (response) {
			self.info = response;

			console.log("Pokemon info:");
			console.log(self.info);


			$(".js-pkmn-name").text(self.info.name);
			$(".js-pkmn-number").text(self.info.pkdx_id);
			$(".js-pkmn-height").text(self.info.height);
			$(".js-pkmn-weight").text(self.info.weight);
			$(".js-pkmn-hp").text(self.info.hp);
			$(".js-pkmn-attack").text(self.info.attack);
			$(".js-pkmn-defense").text(self.info.defense);
			$(".js-pkmn-sp-att").text(self.info.sp_attack);
			$(".js-pkmn-sp-def").text(self.info.sp_defense);

			$(".js-pkmn-types").empty();

			var typeArray = self.info.types
		 	typeArray.forEach( function (type) {
				var html = `
						<li>${type.name}</li>
					`
				$(".js-pkmn-types").append(html)
			});

			$(".js-pokemon-modal").modal("show");

		},
		error: function () {
			alert(`Couldn't get the details for ${this.id} Pokemon`)
		}
	});
};

PokemonApp.Pokemon.idFromUri = function (pokemonUri) {
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
};

// =============================================================

$(document).on("ready", function () {
	$(".js-show-pokemon").on("click", function (event) {
		var $button = $(event.currentTarget);
		var pokemonUri = $button.data("pokemon-uri");

		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});
});