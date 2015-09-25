$(document).ready(function(){

    // Button for menu on phones
    $(".menubutton").click(function() {
      $(".menu").toggleClass("activemenu");
    });

    $('.menu a').each(function() {
      var pathname = location.pathname;
      if (pathname != "/") {
        pathname = pathname.slice(0, -1);
      }
      var href = $(this).attr('href');
      if (pathname == href) {
        $(this).addClass('active');
      }
    });
});
