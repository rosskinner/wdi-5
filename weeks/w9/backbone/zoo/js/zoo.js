
var Animal = Backbone.Model.extend({
  urlRoot: '/animals',
  defaults: {
    type: 'animal',
    ecosystem: '',
    stripes: 0
  },
  initialize: function () {
    console.log("I am an animal");
    this.on('change:type', function (animal) { //Backbone, listening for data changes
      var type = animal.get('type');
      alert("I am now a " + type);
    });
  }
});

var Zoo = Backbone.Collection.extend({
  model: Animal
});

var ZooView = Backbone.View.extend({ //setting up a view to see the zoo
  el: '#main', //element to put the zoo in
  initialize: function () {
  },
  events: {
    'click p': 'paraClick'
  },
  render: function () { //what to render on the page
    var view = this; //refer to the whole view
    view.$el.empty();
    view.collection.each(function (animal) { //this referrs to the collection of animals and for each animal print out the type of animal in a paragraph
      var $p = $('<p/>');
      $p.text(animal.get('type'));
      $a = $('<a>');
      $a.text('click here');
      $a.attr('href', '#animals/' + animal.cid);
      $p.append($a);
      view.$el.append($p);
    });
  },
  paraClick: function () {
    alert('Thankyou for clicking a paragraph');
  }
});

var AppRouter = Backbone.Router.extend({
  routes: {
    '': 'index',
    'animals/:id': 'viewAnimal',
    '*actions': 'defaultRoute'
  },

  index: function () {
    console.log('you found the home page');
    var zooView = new ZooView({collection: gaZoo});
    zooView.render();
  },

  viewAnimal: function (id) {
    console.log('you are viewing animal ' + id);
  },

  defaultRoute: function () {
    console.log(404);
    location.hash = '';
  }
});

var animal = new Animal();
var gerry = new Animal({type: 'giraffe', ecosystem: 'savannah', stripes: 7});
var berty = new Animal({type: 'butterfly', ecosystem: 'mud flats'});

var gaZoo = new Zoo([animal, gerry, berty]);

$(document).ready(function () {
  var router = new AppRouter();
  Backbone.history.start();
});