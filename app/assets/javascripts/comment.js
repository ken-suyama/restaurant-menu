// $(function(){
//   function buildHTML(comment){
//     let html = `
//     <p class="contents__comments--area--field--box">
//       ${comment.text}
//     </p>
//     <p class="contents__comments--area--field--date">
//       ${comment.date}
//     </p>
//     `
//     return html;
//   }
//   $('#new_comment').on('submit', function(e){
//     e.preventDefault();
//     let formData = new FormData(this);
//     var url = $(this).attr('action');
//     console.log(url);
//     $.ajax({
//       url: url,
//       type: "POST",
//       data: formData,
//       dataType: 'json',
//       processData: false,
//       contentType: false
//     })
//     .done(function(data){
//       let html = buildHTML(data);
//       $('.contents__comments--area').append(html);
//       $('.contents__comments--area').animate({scrollTop: $('.contents__comments--area')[0].scrollHeight});
//       $('.contents__container__form').val("");
//       $('.contents__container__send').prop('disabled', false);
//       console.log(data);
//     })
//     .fail(function(){
//       alert("コメントできません");
//     })
    
//   })
// });