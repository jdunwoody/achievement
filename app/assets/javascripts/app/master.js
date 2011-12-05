App.namespace('App.james.master');

App.james.master.showDetailPane = function(event, path) {
  $.get(path, function(data) {
    //$(".navigation-item").css('background-color', 'lightBlue');
    //$(event.target).css('background-color', 'lightBlue');
    $("#detail-container").html(data);
  });
};

App.james.master.init = function() {
  $(document).ready(function($) {
    $(".navigation-item").click(function(event){
      $(".navigation-item").css('background-color', 'lightGrey');
      $(event.target).css('background-color', 'lightBlue');

      path = $(this).attr('path');
      App.james.master.showDetailPane(event, path)
    });

    alert("best in place");
    /* Activating Best In Place */
    jQuery(".best_in_place").best_in_place();
  });
}

