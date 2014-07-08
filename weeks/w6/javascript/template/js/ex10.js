// Create 2 functions that calculate properties of a circle.

// Create a function called calcCircumfrence:

// Pass the radius to the function.
// Calculate the circumference based on the radius, and output "The circumference is NN".
// Create a function called calcArea:

// Pass the radius to the function.
// Calculate the area based on the radius, and output "The area is NN".

var calcCircumference = function(Radius) {
  var Cir = Math.PI * (2*Radius);
  var CirString = console.log('The circumference is ' + Cir);
}

var calcArea = function(Radius) {
  var AreaCircle = Math.PI * (Math.pow(Radius,2));
  var AreaString = console.log('The area is ' + AreaCircle);
}

var valueCirc = function(Radius) {
  calcCircumference(Radius);
  calcArea(Radius);
}

valueCirc(5);
valueCirc(10);