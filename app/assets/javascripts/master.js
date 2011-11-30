App.namespace('App.james.master');

App.james.master.showDetailPane = function(event, path) {
  console.log(path);
  $.get(path, function(data) {
    //$(".navigation-item").css('background-color', 'lightBlue');
    //$(event.target).css('background-color', 'lightBlue');
    $("#detail-container").html(data);
  });
};

App.james.master.init = function() {
  $(document).ready(function($) {
    console.log("binding");

    $(".navigation-item").click(function(event){
      console.error($(event.target));

      $(".navigation-item").css('background-color', 'lightGrey');
      $(event.target).css('background-color', 'lightBlue');

      path = $(this).attr('path');
      showDetailPane(event, path)
    });
  })
}

