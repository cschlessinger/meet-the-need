$(function() {
  $( "#tabs" ).tabs();
  // $('.message-button').click();
});

// Attempt to ajax message box
$(document).ready(function() {
  $('.message-button').click(function() {
    $('.new-conversation').toggle("slow");
  })
})
