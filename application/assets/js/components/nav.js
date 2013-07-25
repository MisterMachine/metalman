// Off canvas navigation
$(document).ready(function() {
 
  $('body').addClass('js');
 
  var $menulink = $('.menu-link');
 
  $menulink.click(function() {
    event.preventDefault();
 
    var footHeight = $('footer').outerHeight();
    $('.unicorn').height(footHeight);
        console.log(footHeight);
 
 
    $menulink.toggleClass('active');
    $('#page').toggleClass('active');
  });
});