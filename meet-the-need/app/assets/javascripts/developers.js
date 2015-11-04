$(function() {
  $( "#tabs" ).tabs();
  // $('.message-button').click();
});

// Attempt to ajax message box
$(document).ready(function() {
  $('.message-button').click(function() {
    $('.new-conversation').toggle("slow");
  });
  $('.msg-history').click(function(e) {
    e.preventDefault();
    $(this).parent().siblings('.message-thread')
    // $('.conversation').toggle("slow");
  });
})
