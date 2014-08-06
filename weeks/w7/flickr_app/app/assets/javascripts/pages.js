$(document).ready(function() {


   var $stretch = $('<span/>');
    $stretch.addClass('stretch');
    $('#images').append($stretch);

  var search_flickr = function() {
    // clear_images();
    var query = $('#search').val();
    console.log('Searching for', query);

    var page = 1;
    var process_images = function (data) {
    var images = data.photos.photo;

      for (var i =0; i < images.length; i++) {
        var item = images[i]
        var img_url = "http://farm"+ item.farm +".static.flickr.com/"+ item.server +"/"+ item.id +"_"+ item.secret +"_m.jpg";
        var $img = $('<img>');
        $img.attr('src', img_url);

        var $grid = $('<section/>');
        $grid.addClass('grid');
        $('#images').prepend($link);


        var $link = $('<a/>');
        $link.attr('href', img_url);
        $($link).prepend($grid);
        $($grid).prepend($img);

        // $($grid).on('click', $img, show_image);
      };

      page += 1;

      // var show_image = function(event) {
      //   event.preventDefault();

      // };
    };



    var images_per_page = 200;
    $.getJSON('https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=9decc95e5fed4fb569d92630fb238e60&text=' + query + '&per_page='+ images_per_page +'&page=' +page + '&format=json&jsoncallback=?', process_images);

  };

  $(window).scroll(function() {
    if($(window).scrollTop() + $(window).height() == $(document).height()) {
      search_flickr();

    }
  });

  var clear_images = function() {
      $('#images').empty();
  };

  $('#search_flickr').on('click', search_flickr);
  $('#clear_images').on('click', clear_images);
});