// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function(){

    // Button for menu on phones
    $(".menubutton").click(function() {
      $(".menu").toggleClass("activemenu");
    });

    // Navigation
    $("#content").easytabs({
      animate     : true,
      updateHash    : true,
      transitionIn  :'slideDown',
      transitionOut :'slideUp',
      animationSpeed  :400,
      tabs      :"> .header > div > ul > li",
      tabActiveClass  :'active',
      defaultTab    :"li#default",
    });

    // Logging tab clicks
    $('#content').on("easytabs:after", function() {
      var h = location.hash
      if (h != "") {
        clicky.log(location.hash, $('[href='+h+']').text());
      }
    });

    // Blog expand
    $('.readmore').click(function() {
        $(this).parent('.post').find('.more').toggle();
    });

    // Contact form validation
    $("#contactform").validate();

    // Updating send button before ajax request
    $('#contactform').bind('ajax:before', function() {
      $('#contactform .submit-button').html("Sending ...")
    })

});
