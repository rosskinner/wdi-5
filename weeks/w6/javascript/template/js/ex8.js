// Forgot how old you are? Calculate it!

// Write a function named calculateAge that:

// takes 2 arguments: birth year, current year.
// calculates the 2 possible ages based on those years. outputs the result to the screen like so: "You are either NN or NN"
// Call the function three times with different sets of values.
// Bonus: Figure out how to get the current year in JavaScript instead of passing it in.

var CurrYear = new Date().getFullYear();

var calculateAge = function(Birth, CurrYear) {
 Age = CurrYear - Birth;
 A = Age + 1;
 Age = console.log('They are either ' + Age + ' or ' + A + '.');
 return Age
}

calculateAge(1989, CurrYear);
calculateAge(1929, CurrYear);
calculateAge(1882, CurrYear);

