
var $ = require('jquery');
require("./lib/social");
require("lazyload");

lazyload();


$(window).scroll(function () {
  var s = $(window).scrollTop() - $('.header').outerHeight(),
		  d = $(document).height() - $('footer').outerHeight(),
		  c = $(window).height(),
  		scrollPercent = (s / (d-c)) * 100;
  var position = scrollPercent;

  $("progress").attr('value', position);

});