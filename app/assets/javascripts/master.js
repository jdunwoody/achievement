
showDetailPane = function(event, path) {
  console.log(path);
  $.get(path, function(data) {
    $(event.target).css('background-color', 'lightBlue');
    $("#detail-container").html(data);
  });
};

$(document).ready(function($) {
  console.log("binding");
  $(".navigation-item").click(function(event){
    $(".navigation-item").css('background-color', 'lightGrey');
    $(event.target).css('background-color', 'lightBlue');

    console.log("clicked");
    path = $(this).attr('path');
    showDetailPane(event, path)
  });
})

