// Ever wonder how much a "lifetime supply" of your favorite snack is? Wonder no more!

// Write a function named calculateSupply that:
// takes 2 arguments: age, amount per day.
// calculates the amount consumed for rest of the life (based on a constant max age). outputs the result to the screen like so: "You will need NN to last you until the ripe old age of X"
// Call that function three times, passing in different values each time.
// Bonus: Accept floating point values for amount per day, and round the result to a round number.

var MaxAge = 100;

var calculateSupply = function(Age, Amount) {
  var Consumed = Math.round(Amount * (MaxAge - Age));
  var Consumed = console.log('You will need ' + Consumed + ' to last you until the ripe old age of ' + MaxAge);
  return Consumed;
}

calculateSupply(24,5);
calculateSupply(58,1);
calculateSupply(10,3);
