$(document).ready(function() {
  $('#get_brother').on('click', function () {
    $.ajax({
      url: '/brothers',
      dataType: 'json',
      method: 'get'
    }).done(function (response) {
      // debugger;
      $('#brothers').append(response.brother);
      $('#magic_number').html(response.magic);
    }).fail(function (response){
      alert('Something bad happend');
    }).complete(function (response){
      console.log('AJAX transaction complete');
    });
  });

  $('.button_to').on('ajax:success', function (event, response) {
    $('#brothers').append(response.brother);
  });
});