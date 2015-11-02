$(document).ready(function() {
  $('article').click(function() {
    // grab id
    var order_id = $(this).attr('class');
    var customer_id = $('#tabs').attr('class').split(' ')[0]
    console.log(customer_id);

    $.ajax({
      url: "customers/" + customer_id,
      method: "GET",
      data: order_id
    })
  })
})