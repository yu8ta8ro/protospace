$ ->
  $('#user_avatar').on 'change', ->
    file = @files
    if !file[0].type.match(/^image\/(png|jpeg|gif)$/)
      return
    img = new Image
    reader = new FileReader

    reader.onload = (e) ->
      $('#avatar_image_preview').attr('src', e.target.result).css 'display', 'block'
      return

    reader.readAsDataURL file[0]
    return
  return
