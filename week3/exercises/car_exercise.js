var Car = function(model, noise) {
	this.model = model
	this.noise = noise
	this.wheels = '4'

		Car.prototype.makeNoise = function() {
			console.log(this.noise)
		};
	};

var car1 = new Car('honda', 'vroooom');
var car2 = new Car('Mini', 'brum brum');

car1.makeNoise()