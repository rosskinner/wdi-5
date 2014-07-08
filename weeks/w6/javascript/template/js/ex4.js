// Calculate properties of a circle, using the definitions at http://math2.org/math/geometry/circles.htm

// Store a radius into a variable.
// Calculate the circumference based on the radius, and output "The circumference is NN".
// Calculate the area based on the radius, and output "The area is NN".

var R = 4;
var Cir = Math.PI * (2*R);
var AreaCircle = Math.PI * (Math.pow(R,2));

console.log('The circumference is ' + Cir);
console.log('The area is ' + AreaCircle);