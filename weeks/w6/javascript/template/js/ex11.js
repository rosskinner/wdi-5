// It's hot out! Let's make a converter based on the steps here.

// Create a function called celsiusToFahrenheit:

// Store a celsius temperature into a variable.
// Convert it to fahrenheit and output "NN°C is NN°F".
// Create a function called fahrenheitToCelsius:
// Now store a fahrenheit temperature into a variable.

// Convert it to celsius and output "NN°F is NN°C."

var fahrenheitToCelcius = function(temp) {
  var Celsius = ((temp - 32) * 5) / 9;
  var Celsius = console.log(temp + "°F is " + Celsius + "°C");
  return Celsius;
}

var celsiusToFahrenheit = function(temp) {
  var Fahrenheit = ((temp * 9) / 5) + 9;
  var Fahrenheit = console.log(temp + "°C is " + Fahrenheit + "°F");
  return Fahrenheit;
}

celsiusToFahrenheit(32);
fahrenheitToCelcius(32);