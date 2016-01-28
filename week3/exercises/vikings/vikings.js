var VikingHuman = function(name, health, strength) {
	this.name = name;
	this.health = health;
	this.strength = strength
}

var maxHealth = 100;
var minHealth = 50;
var maxStrength = 30;
var minStrength = 15;



josh = new VikingHuman('Josh', Math.random() * (maxHealth - minHealth) + minHealth, Math.random() * (maxStrength - minStrength) + minStrength);
faraz = new VikingHuman('Faraz', Math.random() * (maxHealth - minHealth) + minHealth, Math.random() * (maxStrength - minStrength) + minStrength);

var maxTurns = 8;
var minTurns = 5;

function vikingFight(personOne, personTwo) {
	var turns = Math.random() * (maxTurns - minTurns) + minTurns;

	function fight() {
		personOne.health -= personTwo.strength;
		personTwo.health -= personOne.strength;
		turns--;
		if (personOne.health > 0 && personTwo.health > 0 && turns > 0) {
			fight();
		}
		else {
			if (personOne.health > personTwo.health) {
				console.log(personOne.name + " wins!!");
			}
			else {
				console.log(personTwo.name + " wins!!");
			}
		}
		
	}
	fight();

}

vikingFight(faraz, josh);
