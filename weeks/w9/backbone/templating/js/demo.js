$(document).ready(function(){
  var posts =
  [
  {
    author: 'Gary Glitter',
    title: 'I Love Kids',
    content: "Come to some children\ 's charity event with me",
    date: 'October 2003'
  },
  {
    author: 'Prince Charles',
    title: 'I Love Ponies',
    content: "Ponies ponies ponies",
    date: 'April 2004'
  },
  {
    author: 'Pope Francis',
    title: 'I Love Church',
    content: "God, jesus, mary, joseph",
    date: 'January 2014'
  }
  ];

  var post_template = $('#post-template').html();
  var post_html = _.template(post_template);

  _(posts).each(function (p){
    var copy = post_html(p);
    $('#yes').append(copy);
  });

});