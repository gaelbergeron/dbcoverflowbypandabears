
$(document).ready(function () {
// -------------------------------------------

// vote up/down QUESTION
  $(".question-vote").on("click", function(event){
    event.preventDefault();
    var route = $(this).attr("href");
    console.log(route)
    $.ajax({
      url: route,
      type: "POST",
      dataType: "json"
    })
    .done(function(response){
      $("#total-question-votes").html(response.points)
    });
  });

// vote up/down ANSWER
  $(".answer-vote").on("click", function(event){
    event.preventDefault();
    var route = $(this).attr("href");
    $.ajax({
      url: route,
      type: "POST",
      dataType: "json"
    })
    .done(function(response){
      // var answer_obj = $("#answer" + response.id)
      // $(answer_obj).find
      $("#total-answer-votes").html(response.points)
    });
  });


//----------------------------------------------
});

