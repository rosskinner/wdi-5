// Why pay a fortune teller when you can just program your fortune yourself?

// Write a function named tellFortune that:

// takes 4 arguments: number of children, partner's name, geographic location, job title.
// outputs your fortune to the screen like so: "You will be a X in Y, and married to Z with N kids."
// Call that function 3 times with 3 different values for the arguments.

var tellFortune = function(N, Name, GeoLocation, Job) {
    var result = console.log('You will be a ' + Job +' in ' + GeoLocation +', and married to '+  Name + ' with ' + N + ' kids.');
  return result;
}

tellFortune(5,'Bartholomew','Sydney', 'web developer');
tellFortune(1,'Joseph','Paris', 'mother of God');
tellFortune(2,'Ricardo','Spain', 'house wife');

