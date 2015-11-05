// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
  $('.message-content:first').addClass('active');
  $('.select-conversation:first').addClass('active-selector')
  $('.select-conversation').click(function() {
  	this_id = $(this).attr('id');
  	$('.active').removeClass('active');
  	$(this).addClass('active-selector');
  	$(this).siblings('.select-conversation').removeClass('active-selector')
  	$('#' + this_id + '.message-content').addClass('active');
  })
})