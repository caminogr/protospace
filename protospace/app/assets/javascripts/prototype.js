$(window).on("load", function(){
  $('input[type=file]').change(function(){
    var i = $('input[type=file]').index(this);
    var file = $(this).prop('files')[0];
    var reader = new FileReader();
    reader.onload = function(){
      $("#image_preview" + i).attr('src', reader.result).css('display', 'inline');
    }
    reader.readAsDataURL(file);
  });

  $('#add_new_form').on('click',function(){
    $('.hide_form').addClass('appear_form').removeClass('hide_form').css('display', 'list-item');
    $(this).css('display', 'none');
  });
});

