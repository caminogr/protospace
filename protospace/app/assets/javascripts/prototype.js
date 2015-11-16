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
});

