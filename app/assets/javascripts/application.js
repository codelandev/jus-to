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
//= require_tree ./lib
//= require justo/justo.js
//= require init.js
//= require_tree ./justo
//= require bootstrap
//= require circles
//= require vanilla-mask
//= require toastr_rails

$(function() {
  $('[data-smooth-scroll="true"]').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html, body').animate({
          scrollTop: target.offset().top
        }, 800);
        return false;
      }
    }
  });

  $('[data-mask="cpf"]').each(function (i, elem) {
    VMasker(elem).maskPattern("999.999.999-99");
  });

  $('[data-mask="cep"]').each(function (i, elem) {
    VMasker(elem).maskPattern("99.999-999");
  });

  $('[data-mask="date"]').each(function (i, elem) {
    VMasker(elem).maskPattern("99/99/9999");
  });

  $('[data-mask="phone"]').each(function (i, elem) {
    VMasker(elem).maskPattern("9999-99999");
  });
});
