# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery -> 
	$('#event_term_start').datepicker({ dateFormat: "yy-mm-dd" })	
	$('#event_term_end').datepicker({ dateFormat: "yy-mm-dd" })	
	$('#event_order_end').datepicker({ dateFormat: "yy-mm-dd" })	
