$(document).on("turbolinks:load",function(){
  $(".owl-carousel").owlCarousel();

  $('.sprocket').on('click', function(e){
    e.stopPropagation();
    $('.choices').fadeToggle();
  });
})
