$(".btn").on("click", function() {
	$(this).toggleClass("active")
})
// Write your Pizza Builder JavaScript in this file.
$(".btn-pepperonni").on('click', function() {
	$(".pep").toggle();
	// $(".btn-pepperonni").toggleClass("active");
		
		if ($(".btn-pepperonni").hasClass("active")== false) {
			var totalPrice = Number($(".total").text().slice(1));
			var withPrice = "" + (totalPrice - 1);
			$(".total").text("$" + withPrice);
		}
		else {
		var totalPrice = Number($(".total").text().slice(1));
		var withNoPrice = "" + (totalPrice + 1);
		$(".total").text("$" + withNoPrice);
			}
})

$(".btn-green-peppers").on('click', function() {
	$(".green-pepper").toggle();
	if ($(".btn-green-peppers").hasClass("active")== false) {
			var totalPrice = Number($(".total").text().slice(1));
			var withPrice = "" + (totalPrice - 1);
			$(".total").text("$" + withPrice);
		}
		else {
		var totalPrice = Number($(".total").text().slice(1));
		var withNoPrice = "" + (totalPrice + 1);
		$(".total").text("$" + withNoPrice);
			}
})

$(".btn-mushrooms").on('click', function() {
	$(".mushroom").toggle();
	if ($(".btn-mushrooms").hasClass("active")== false) {
			var totalPrice = Number($(".total").text().slice(1));
			var withPrice = "" + (totalPrice - 1);
			$(".total").text("$" + withPrice);
		}
		else {
		var totalPrice = Number($(".total").text().slice(1));
		var withNoPrice = "" + (totalPrice + 1);
		$(".total").text("$" + withNoPrice);
			}
})

$(".btn-crust").on("click", function() {
	$(".crust").toggleClass("crust-gluten-free");
	if ($(".btn-crust").hasClass("active")== false) {
			var totalPrice = Number($(".total").text().slice(1));
			var withPrice = "" + (totalPrice - 5);
			$(".total").text("$" + withPrice);
		}
		else {
		var totalPrice = Number($(".total").text().slice(1));
		var withNoPrice = "" + (totalPrice + 5);
		$(".total").text("$" + withNoPrice);
			}
})

$(".btn-sauce").on("click", function() {
	$(".sauce").toggleClass("sauce-white");
	if ($(".btn-sauce").hasClass("active")== false) {
			var totalPrice = Number($(".total").text().slice(1));
			var withPrice = "" + (totalPrice - 3);
			$(".total").text("$" + withPrice);
		}
		else {
		var totalPrice = Number($(".total").text().slice(1));
		var withNoPrice = "" + (totalPrice + 3);
		$(".total").text("$" + withNoPrice);
			}
})
