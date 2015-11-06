$(document).ready(function() {
  // on click of unassigned projects, grab which project and customer id
  // send a ajax request to show route with order id
  // receive response on matching developers corresponding to the project selected
  $('.get-developers:first').parents(".card").css("background-color", "#D0D0D0")

  $('.get-developers').click(function(e) {
    e.preventDefault();
    var order_id = $(this).attr('class');
    var customer_id = $('#tabs').attr('class').split(' ')[0];
    $(this).parents(".card").siblings().css("background-color", "white");
    $(this).parents(".card").css("background-color", "#D0D0D0");
    $.ajax({
      url: "/customers/" + customer_id,
      method: "get",
      data: { "order_id": order_id }
    }).done(function(response){
      $('.developer_details').html(response)
    });
  });
});
