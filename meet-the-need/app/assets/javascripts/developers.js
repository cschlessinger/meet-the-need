$(function() {
  $( "#tabs" ).tabs();
});

$(document).ready(function() {
  $('.message-content:first').addClass('active');
  $('.select-conversation:first').addClass('active-indicator')
  $('.select-conversation').click(function() {
  	this.addClass('active-indicator')
  	this_id = $(this).attr('id');
  	console.log(this_id);
  	$('.active').removeClass('active');
  	$('#' + this_id + '.message-content').addClass('active');
  })
})


