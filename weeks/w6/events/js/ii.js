var solution = document.getElementById("solution");
var buttonSquare = document.getElementById("square-button");
var buttonHalf = document.getElementById("half-button");
var buttonPercent = document.getElementById("percent-button");
var buttonAreaCircle = document.getElementById("area-button");


var square = function() {
  var square = document.getElementById("square-input").value;
  var square = parseInt(square);
  var value = Math.sqrt(square,2);
  solution.innerHTML = "The square root of " + square + " is " + value;
};

var half = function() {
  var half = document.getElementById("half-input").value;
  var half = parseInt(half);
  var value = half.innerHTML / 2;
  solution.innerHTML = "Half the value of " + half + " is " value;
};

var percent = function() {
  var fraction = document.getElementById("percent1-input").value;
  var whole = document.getElementById("percent2-input").value;
  var value = whole.innerHTML / fraction.innerHTML;
  solution.innerHTML = value;
};

var areaCircle = function() {
  var square = document.getElementById("area-input").value;
  var value = square.innerHTML * 2;
  solution.innerHTML = value;
};

buttonSquare.addEventListener ('click', square);
buttonHalf.addEventListener ('click', half);
buttonPercent.addEventListener ('click', percent);
buttonAreaCircle.addEventListener ('click', areaCircle);