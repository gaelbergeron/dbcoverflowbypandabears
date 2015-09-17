$(document).ready(function () {
  $(".vote-button").on("click", function(event){
    event.preventDefault();
    var route = $(this).attr("href");
    $.ajax({
      url: route,
      type: "GET"
      // dataType: "json"
    })
    .done(function(data){
      console.log(data);

    });
  });

// JS to write here!

});
