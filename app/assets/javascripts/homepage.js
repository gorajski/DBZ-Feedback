$(function(){
  $("#review-form").on("submit", function(event){
    event.preventDefault();
    var url = $(this).attr("action");
    var data = $(this).serialize();
    console.log(data);
    var method =$(this).attr("method");
    var ajaxRequest = $.ajax({
      method: method,
      url: url,
      data: data
    });
    ajaxRequest.always(function(response){
      $("#review-container").replaceWith(response);
    });
  });
});
