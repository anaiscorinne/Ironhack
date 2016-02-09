$(document).on("ready", function () {
	$(".js-show-characters").on("click", function () {
		fetchCharacters();
	});

	$(".js-add-character").on("click", function (event) {
		event.preventDefault();
		publishCharacter();
	});
});

function publishCharacter () {
	var newCharacter = {
		name: $('.js-new-name').val(),
		occupation: $('.js-new-occupation').val(),
		weapon: $('.js-new-weapon').val()
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
			alert("Character added succesfully!")
		},
		error: function () {
			alert("Could not add new character")
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