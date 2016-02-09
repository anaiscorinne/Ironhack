$(document).on("ready", function () {
	$(".js-show-characters").on("click", function () {
		fetchCharacters();
	});

	$(".js-add-kylo").on("click", function () {
		publishKylo();
	});
});

function publishKylo () {
	var newCharacter = {
		name: "Emo Kylo Ren",
		occupation: "Whiner",
		weapon: "Complaining"
	};
	$.ajax({
		type: "POST",
		url: 'https://ironhack-characters.herokuapp.com/characters',
		data: newCharacter,
		success: function (response) {
			var html = `
			<li>
				<h2>${newCharacter.name}</h2>
				<p>${response.id}</p>
				<p>${newCharacter.occupation}</p>
				<p>${newCharacter.weapon}</p>
			</li>
		`;
			$(".js-character-list").append(html);
			alert("Emo Kylo Ren added succesfully!")
		},
		error: function () {
			alert("Could not add Kylo Ren")
		},
	});
}


function fetchCharacters () {
$.ajax({

	url: 'https://ironhack-characters.herokuapp.com/characters',

	success: function (response) {
		console.log("good to go");
		displayCharacters(response);

	},

	error: function () {
		console.log("Error");
	}
});
}

function displayCharacters (characters) {
	characters.forEach( function (char) {
		var html = `
			<li>
				<h2>${char.name}</h2>
				<p>${char.id}</p>
				<p>${char.occupation}</p>
				<p>${char.weapon}</p>
			</li>
		`
		$(".js-character-list").append(html);
	});
}