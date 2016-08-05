$(function() {
    $(".tab").on("click", function(event){
      event.preventDefault();
      $(".tab").toggleClass("active");
      $(".feedback-status").toggleClass("hidden");
      $(".feedback-stats").toggleClass("hidden");
      $("#feedback-given").toggleClass("hidden");
      $("#feedback-received").toggleClass("hidden");
      $("#feedback-given").find(".verb").text("given");
    });
});
