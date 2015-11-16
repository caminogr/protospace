$(window).on("load", function(){
  $('input[type=file]').change(function(){
    var file = $(this).prop('files')[0];
  });
});

