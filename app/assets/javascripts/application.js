// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks

$(document).ready(function() {
    $('.dropdown').click(
        function(){
            $(this).children('.sub-menu').slideToggle(200);
            $('#home').click(function() {
            window.location.replace("/");
            })
            $('#food').click(function() {
            window.location.replace("/foods");
            })
            $('#profile').click(function() {
            window.location.replace("/profile");
            })
        }
    );

    var dollar = "$";

    $('.currency').click(function(){
      if(dollar == "$") {
      $('<i>€ </i>').replaceAll("b");
      dollar = "€";
      }
      else if(dollar == "€") {
        $('<b>$</b>').replaceAll("i");
        dollar = "$";
      }
    });
});

