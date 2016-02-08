// Write your Pizza Builder JavaScript in this file.
$(".btn-pepperonni").on('click', function() {
	$(".pep").toggle();
	// $(".btn-pepperonni").toggleClass("active");

	if ($(".btn-pepperonni").hasClass("active") == false) {
		var value = $("strong").text();
		var valueWithoutDollarSign = value.slice(1)
		var valueToInt = parseInt(valueWithoutDollarSign);
		var newValue = valueToInt - 1;
		var newValueToStr = newValue.toString();
		$("strong").text("$" + newValueToStr);
	}
	else {
		var value = $("strong").text();
		var valueWithoutDollarSign = value.slice(1)
		var valueToInt = parseInt(valueWithoutDollarSign);
		var newValue = valueToInt + 1;
		var newValueToStr = newValue.toString();
		$("strong").text("$" + newValueToStr);
	}
})

$(".btn-green-peppers").on('click', function() {
	$(".green-pepper").toggle();
	// $(".btn-green-peppers").toggleClass("active");
})

$(".btn-mushrooms").on('click', function() {
	$(".mushroom").toggle();
	// $(".btn-mushrooms").toggleClass("active");
})

$(".btn-crust").on("click", function() {
	$(".crust").toggleClass("crust-gluten-free");
})

$(".btn-sauce").on("click", function() {
	$(".sauce").toggleClass("sauce-white");
})

$(".btn").on("click", function() {
	$(this).toggleClass("active")
})