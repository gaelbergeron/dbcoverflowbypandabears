$(document).ready(function () {
  $(".vote-question-button").on("click", function(event){
    event.preventDefault();
    var route = $(this).attr("href");
    $.ajax({
      url: route,
      type: "POST",
      dataType: "json"
    })
    .done(function(data){
      $("#total-question-votes").html(data.points)
    });
  });

  $(".vote-answer-button").on("click", function(event){
    event.preventDefault();
    var route = $(this).attr("href");
    $.ajax({
      url: route,
      type: "POST",
      dataType: "json"
    })
    .done(function(data){
      debugger
      console.log("HI")
      var answer_obj = $("#answer" + data.id)
      $(answer_obj).find("#total-answer-votes").html(data.points)
    });
  });

submitAnswer();

});


var submitAnswer = function(){
  $('form').on('submit', function(event){
    event.preventDefault();
    console.log('sucess');
    var url = $(this).attr('action'),
        method = $(this).attr('method'),
        data = $(this).serialize(),
        beforeSend = $(this).append('<i class="fa fa-spinner fa-pulse"></i>'),
        config = { url: url,
              data: data,
              method: method,
              dataType: 'html'
              }

    $.ajax(config)

    .done(function(response){
      $('ul#answers').append(response);
      $('form input[type=text]').val("");
      $('.fa-spinner').remove();
    })

    .fail(function(response){
      console.log('fail');
    })

  });
};