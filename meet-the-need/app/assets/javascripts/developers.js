$(function() {
  $( "#tabs" ).tabs();
  // $('.message-button').click();
});

// Attempt to ajax message box
$(document).ready(function() {
  $('.message-button').click(function() {
    $('.new-conversation').show();
  });
  $('.msg-history').click(function(e) {
    e.preventDefault();
    var msg_thread = $(this).parent().siblings('.message-thread').children().not(':last');
    msg_thread.show();
    // msg_thread.toggle("slow");
  });
})
