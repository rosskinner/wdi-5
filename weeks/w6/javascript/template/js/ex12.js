// Write a function named greaterNum that:

// takes 2 arguments, both numbers.
// returns whichever number is the greater (higher) number.
// Call that function 2 times with different number pairs, and log the output to make sure it works (e.g. "The greater number of 5 and 10 is 10.").

var greaterNum = function(x,y) {
  if (x < y) {
    result = y;
  } else {
    result = x;
  }

  var string = console.log("The greater number of " + x + " and " + y + " is " + result);
  return string;
}

greaterNum(5,10);