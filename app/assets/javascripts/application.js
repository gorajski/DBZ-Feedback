// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require_tree .

$(document).ready(function() {
  $('#faq').hide()
  $('.open-arrows').on("click", function() {
    // if ($('#faq').attr("style") === "display: none;") {
      $('#sidebar').hide()
      $('#faq').show()
      $('#faq').css("display", "inline-block")
    // }
  })
  $('.question').on("click", function() {
    $(".answers").hide()
    $(".question").css("color", "black")
    $(this).next().show()
    $(this).css("color", "lightseagreen")
  })
  $('.close-arrows').on("click", function() {
    $('#sidebar').show()
    $('#sidebar').css("display", "inline-block")
    $('#faq').hide()
  })

  $('#feedback-recipient').on("keyup", function(event) {
    event.preventDefault();
    if ($(this).val().length > 3) {
      $.ajax({
        url: '/users/auto',
        method: 'get'
      }).done(function(response){
        $("#feedback-recipient").autocomplete({
          source: response
          });
      });
    };
  })
});


