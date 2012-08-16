$(document).ready ->
  # Contact form validation
  $("#contactform").validate();

  # Updating send button before ajax request
  $('#contactform').bind('ajax:before', -> $('#contactform .submit-button').html("Sending ..."))
