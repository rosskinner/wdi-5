var catFactory = function (age, color) {
  var cat = {
    age: age,
    furColor: color,
    meow: function() {
      console.log('meoowww');
    },
    eat: function(food) {
      console.log('Yum, I love ' + food);
    },
    sleep: function(numMinutes) {
      for (var i = 0; i < numMinutes; i++) {
        console.log('z');
      }
    },
    destroyFurniture: function () {
      console.log('Muahahaha');
    }
  };
  return cat;
};

var syntaxTheCat = catFactory(25, 'black and white tuxedo');

var lizzieTheCat = catFactory(2, 'grey');


var daemonCat = catFactory();
syntaxTheCat.age = 10;
syntaxTheCat.furColor = "white";


// var lizzieTheCat = {
//   age: 18,
//   furColor: 'grey',
//   meow: function() {
//     console.log('meoowww');
//   },
//   eat: function(food) {
//     console.log('Yum, I love ' + food);
//   },
//  sleep: function(numMinutes) {
//     for (var i = 0; i < numMinutes; i++) {
//       console.log('z');
//     }
//   }
// };