// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  $('.message-content:first').addClass('active');
  $('.select-conversation').click(function() {
  	this_id = $(this).attr('id');
  	console.log(this_id);
  	$('.active').removeClass('active');
  	$('#' + this_id + '.message-content').addClass('active');
  })
})