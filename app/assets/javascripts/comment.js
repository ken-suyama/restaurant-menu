$(function(){
  function buildHTML(comment){
    let html = `
    <p class: contents__comments__box>
      ${comment.id}
      ${comment.text}
    </p>
    <p class: contents__comments--date>
      ${comment.date}
    </p>
    `
    return html;
  }
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    let formData = new FormData(this);
    $.ajax({
      url: "/menus/1",
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      let html = buildHTML(data);
      $('.contents__comments').append(html);
      $('.new_message').val("");
    })
    .fail(function(){
      alert("コメントできません");
    })
  })
});