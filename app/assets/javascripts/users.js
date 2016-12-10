$(function show_avatar_preview() {
  $("#user_avatar").on("change", function() {var file = this.files;
  if (!file[0].type.match(/^image\/(png|jpeg|gif)$/)) return;
  var img = new Image();
  var reader = new FileReader();
  reader.onload = function (e) {$("#avatar_image_preview").attr('src', e.target.result).css('display', 'block');}
  reader.readAsDataURL(file[0]);
 });
});
