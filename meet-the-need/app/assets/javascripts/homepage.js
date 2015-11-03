$(document).ready(function() {
// on click of latest project, flip the card to show detailed project info
  $('article').click(function(e) {
    e.preventDefault();
    var selected_article = $(this)
    console.log(selected_article);
    var project_url = $(this).parent().attr('href');
    console.log(project_url);
    // $('article').first().children().attr('href');
    // var project_id =
    // console.log((this;
    // flip the deck
    // take information on project id
    // send it to the project show route
    // render 'show.html.erb' on the other side of the deck
    $.ajax({
      url: project_url,
      method: "get"
    }).done(function(response){
      console.log(response);
      selected_article.html(response);
      // $('.developer_details').html(response)
    });
  });
})