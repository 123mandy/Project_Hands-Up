// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .

// let map;

// function initMap() {
// let latNum=parseFloat(document.getElementById("latitude").innerText)
// let lngNum=parseFloat(document.getElementById("longitude").innerText)
//   const mapOptions = {
//     zoom: 16,
//     center: { lat: latNum, lng: lngNum },
//   };

//   map = new google.maps.Map(document.getElementById("map"), mapOptions);

//   const marker = new google.maps.Marker({

//     position: { lat:latNum, lng: lngNum },
//     map: map,
//   });

//   const infowindow = new google.maps.InfoWindow({
//     content: "<p>Help!</p>",
//   });

//   google.maps.event.addListener(marker, "click", () => {
//     infowindow.open(map, marker);
//   });
// }
