// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  $('.message-content:first').addClass('active');
  $('.select-conversation:first').addClass('active-selector')
  $('.select-conversation').click(function() {
  	// Set ID from selector click button to find corresponding conversation
  	this_id = $(this).attr('id');
  	// Hide the active conversation
  	$('.active').removeClass('active');
  	$('#' + this_id + '.message-content').addClass('active');

  	//Make the clicked selector active
  	$(this).addClass('active-selector');
  	$(this).siblings('.select-conversation').removeClass('active-selector')
  })
})