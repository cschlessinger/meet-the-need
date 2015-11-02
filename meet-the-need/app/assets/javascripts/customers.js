$(document).ready(function() {
  $('.unassigned_projects').click(function() {
    // grab id
    var order_id = $(this).attr('class');
    var customer_id = $('#tabs').attr('class').split(' ')[0]
    // console.log(customer_id);

    $.ajax({
      url: "/customers/" + customer_id,
      method: "POST",
      data: { "order_id": order_id }
    }).done(function(response){
      console.log(response)
    });
  });
});