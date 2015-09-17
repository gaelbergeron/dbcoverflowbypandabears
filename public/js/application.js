$(document).ready(function () {
  $(".vote-button").on("click", function(event){
    event.preventDefault();
    var route = $(this).attr("href");
    $.ajax({
      url: route,
      type: "POST",
      dataType: "json"
    })
    .done(function(data){
      $("#total-votes").html(data.points)
    });
  });

});
