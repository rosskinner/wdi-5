var app = {};

app.Router = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/:id': 'getPost'
  },
  initialize: function () {
    console.log("router initialized");
    app.posts = new app.Posts([
      new app.Post({ id: 1, title: 'First Post', content: 'Backbone is friggin confusing'}),
      new app.Post({ id: 2, title: 'Second Post', content: 'Nope still not getting it'}),
      new app.Post({ id: 3, title: 'Third Post', content: 'stupid stupid'}),
      new app.Post({ id: 4, title: 'Fourth Post', content: 'i feel sick...'})
    ]);
  },
  index: function () {
    console.log('you reached index');
    var appView = new app.AppView({collection: app.posts});
    appView.render();
  },
  getPost: function (id) {
    var post = app.posts.get(id);
    new app.PostView({model: post});
  }
});

app.Post = Backbone.Model.extend({
  defaults: {
    id: 0,
    title: 'New Post about Backbone',
    content: 'New Post about Backbone, content goes here'
  }
});

app.Posts = Backbone.Collection.extend({
  model: app.Post
});

app.AppView = Backbone.View.extend({
  el: '#main',
  initialize: function () {
    console.log('AppView Initiaized');
  },
  render: function () {
    this.$el.html(app.templates.appView);
    this.collection.each(function (p) {
      var view = new app.PostListView({model: p});
      $('#posts').append( view.render() );
    });
  }
});

app.PostListView = Backbone.View.extend({
  tagName: 'li',
  events: {
    'click': 'view'
  },
  initialize: function() {

  },
  render: function () {
    // THIS MAKES NO FRIGGIN SENSE!!!!!! WTF
    var list_html = Handlebars.compile(app.templates.postListView)
    var copy = list_html( this.model.toJSON() );

    this.$el.html( copy );
    return this.el;
  },
  view: function () {
    app.router.navigate('posts/' + this.model.get('id'), true);
  }
});

app.PostView = Backbone.View.extend({
  el: '#main',
  initialize: function () {
    this.render();
  },
  render: function () {
    var post_html = Handlebars.compile(app.templates.postView);
    var copy = post_html( this.model.toJSON() );

    this.$el.html( copy );
  }
});

$(document).ready(function(){
  app.templates = {
    appView: $('#app-template').html(),
    postListView: $('#list-template').html(),
    postView: $('#post-template').html()
  };

  app.router = new app.Router();
  Backbone.history.start();
});