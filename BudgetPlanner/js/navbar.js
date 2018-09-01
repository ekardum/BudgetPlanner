/*$(document).on('click', '.navbar li',function() {
    $('.navbar li').removeClass('active');
    $(this).addClass('active');
});*/

     
$( document ).ready(function() {
var href = $(location).attr('href').split('/')[3];
   $('.navbar li').removeClass('active');
   $('.navbar li').find('a[href="' +href+ '"]').parent().addClass('active')
   });