$.ajax({

	url: 'https://ironhack-characters.herokuapp.com/characters',

	success: function (response) {
		console.log("good to go");
		// console.log(response);
		displayCharacters(response);

	},

	error: function () {
		console.log("Error");
	}
});

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