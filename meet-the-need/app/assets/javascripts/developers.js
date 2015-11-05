$(function() {
  $( "#tabs" ).tabs();
});

$(document).ready(function() {
  $('.message-content:first').addClass('active');
  $('.select-conversation').click(function() {
  	this_id = $(this).attr('id');
  	console.log(this_id);
  	$('.active').removeClass('active');
  	$('#' + this_id + '.message-content').addClass('active');
  })
})


