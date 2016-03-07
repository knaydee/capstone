$(document).ready(function() {
  console.log("ready to go!");
  $('#tabs > li').on('click', function() {
    var show = '#' + $(this).data('target');
    $(this).addClass('current').siblings().removeClass('current');
    $(show).addClass('current').siblings().removeClass('current');
  });
});
