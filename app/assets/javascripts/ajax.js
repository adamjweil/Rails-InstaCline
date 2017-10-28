$(document).ready(function() {
  $('#new_photo').submit(function(e) {
    e.preventDefault();
    reader = new FileReader();
    file = $('input[type=file]')[1].files[0]
    reader.readAsDataURL(file)
    reader.onload = function(event) {
      $('img')[$('img').length -1].src = reader.result
      $.ajax({
        url: '/photos',
        method: 'post',
        data: {base64: reader.result}
    }).done(function(response) {
      console.log(response)
    })
  }
})
})
