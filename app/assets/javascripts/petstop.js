$(document).ready(function() {
  $('#tabs > li').on('click', function() {
    var show = '#' + $(this).data('target');
    $(this).addClass('current').siblings().removeClass('current');
    $(show).addClass('current').siblings().removeClass('current');
  });

  $('#vet_services').change(function() {
    var vet_id = $('form').attr('id').slice(-1);
    var form_id = $('form').attr('id');
    $('form').attr('url', '/vets/'+vet_id+'/services/'+$(this).val());
    window.location = $('form').attr('url');
  });

  // add on to search form an event handler
  $("#search-form").on("ajax:success", function(e, data, status, xhr) {
    var info = $(data).filter('#vet-info')
  //   $("#new_article").append xhr.responseText;
  // }).on("ajax:error", function(e, xhr, status, error) {
  //   $("#new_article").append "<p>ERROR</p>"
  });
});
