$(document).ready(function() {

  var add_color = function() {
    var color = $('#color').val();
    var $box = $('<div></div>');
    $box.addClass('box');
    $box.css('background-color', color);
    $box.prependTo('#colors'); // same as $('colors').prepend($box);

  };

  var set_color = function() {
    var $box = $(this);
    var color = $box.css('background-color');
    $('#selected').css('background-color', color);
  };

  var clear_colors = function() {
    $('#colors').empty();
    $('#selected').css('background-color', 'white');
  };

  var holdActive = false;

  $('#canvas').mousedown(function () {
    holdActive = true;

  });

  $('#canvas').mouseup(function () {
    holdActive = false;

  });

  var add_bg = function() {
    var img = $('#background_image').val();
    $('#canvas').css('background-image', "url(" + img + ")");
  };

  var paint = function() {
    if (holdActive == true) {
      var color = $('#selected').css('background-color');
      var $pixel = $(this);
      $pixel.css('border-bottom-color', color);

    }
  }

  $('#add_color').on('click', add_color);
  $('#clear').on('click', clear_colors);
  $('#colors').on('click', '.box', set_color); // Delegation!
  $('#canvas').on('mouseover', '.pixel', paint); // Delgation!
  $('#add_bg').on('click', add_bg);

  var create_pixels = function() {
    var $canvas = $('#canvas');
    _(1230).times(function() {
      var $pixel = $('<div/>');
      $pixel.addClass('pixel');
      $pixel.appendTo($canvas);
      if ($pixel.index() % 2 == 0) {
        $pixel.css('-webkit-transform', 'rotate(' + '0.5' + 'turn)');
      }
    });

  };

  create_pixels();
});