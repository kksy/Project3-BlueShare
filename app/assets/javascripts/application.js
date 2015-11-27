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
//= require underscore
//= require jquery
//= require jquery_ujs

//= require foundation

//= require_tree .

//= require gmaps/google

//=  require gmaps/google

//= require map/map

//= require masonry

//= require imageLoaded 

//= require lightslider

// load foundation
$(document).ready(function() {
	$(document).foundation();
	$('#lightSlider').lightSlider({
    gallery: true,
    item: 1,
    loop: true,
    slideMargin: 0,
    thumbItem: 9
  });
});

//= require turbolinks

// load masonry
$(document).ready( function() {
  // init Masonry after all images have loaded
  var $grid = $('#masonry-grid').imagesLoaded( function() {
    $grid.masonry({
      itemSelector: '.grid-item',
      percentPosition: true,
      columnWidth: '.grid-sizer'
      // gutter: '.gutter-sizer'
    }); 
	});
});