$(window).on("load", function(){
  $('input[type=file]').change(function(){
    post_prototype(this);
  });

  $('#add_new_form').on('click',function(){
    new_prototype(this);
  });

  $('#add_sub_image_form').on('click',function(){
    edit_prototype(this);
  });
});


function post_prototype(element){
  var i = $('input[type=file]').index(element);
  var file = $(element).prop('files')[0];
  var reader = new FileReader();
  reader.onload = function(){
    $("#image_preview" + i).attr('src', reader.result).css('display', 'inline');
    }
  reader.readAsDataURL(file);
}

function new_prototype(element){
  $('.hide_form').addClass('appear_form').removeClass('hide_form').css('display', 'list-item');
  $(element).css('display', 'none');
}

function edit_prototype(element){
  index = $('.appear_form').length;
  $('.list-group-item').eq(index).addClass('appear_form').removeClass('hide_form').css('display', 'list-item');
  if(index == 2){
    $(element).css('display', 'none');
  }
}
