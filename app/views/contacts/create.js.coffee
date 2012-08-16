$('#contact_request_name, #contact_request_email, #contact_request_message').val("")
$('#contactform .notice').html("Thank you for your message. I will get in contact with you shortly!").show()
$('#contactform .submit-button').html("Send Message")

setTimeout((-> $('#contactform .notice').fadeOut("slow")), 5000)
