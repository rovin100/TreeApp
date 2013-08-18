// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require webwidget_vertical_menu
//= require_tree .


$(function() {
         $("#webwidget_vertical_menu").webwidget_vertical_menu({
             menu_width: '160',
             menu_height: '25',
             menu_margin: '2',
             menu_text_size: '12',
             menu_text_color: '#CCC',
             menu_background_color: '#666',
             menu_border_size: '2',
             menu_border_color: '#000',
             menu_border_style: 'solid',
             menu_background_hover_color: '#999',
             directory: 'images'
         });
     });
