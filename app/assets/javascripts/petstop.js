$(document).ready(function() {
  $('#tabs > li').on('click', function() {
    var show = '#' + $(this).data('target');
    $(this).addClass('current').siblings().removeClass('current');
    $(show).addClass('current').siblings().removeClass('current');
  });

  $('#vet_services').change(function() {
    var vet_id = $('form').attr('id').slice(-1);
    console.log(vet_id);
    $('form').attr('url', '/vets/'+vet_id+'/services/'+$(this).val());
  });
});
