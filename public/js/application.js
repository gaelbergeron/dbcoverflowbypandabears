$(document).ready(function () {
  $(".vote-button").on("click", function(event){
    event.preventDefault();
    var route = $(this).attr("href");
    debugger
    $.ajax({
      url: route,
      type: "POST",
      dataType: "json"
    })
    .done(function(data){
      $("#total-votes").html(data.all_votes)
    });
  });

// JS to write here!

});
