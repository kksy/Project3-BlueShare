
$(document).ready(function(){
  var map = new google.maps.Map($('.map')[0],{
    zoom:5,
    center: {lat: -37.813155, lng:144.964078}
  });

  var infoWindow = new google.maps.InfoWindow({map: map});

  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var pos = {
        lat: position.coords.latitude,
        lng: position.coords.longitude
      };

      infoWindow.setPosition(pos);
      infoWindow.setContent('Location found.');
      map.setCenter(pos);
    }, function() {
      handleLocationError(true, infoWindow, map.getCenter());
    });
  } else {
    // Browser doesn't support Geolocation
    handleLocationError(false, infoWindow, map.getCenter());
  }

  function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation ?
      'Error: The Geolocation service failed.' :
      'Error: Your browser doesn\'t support geolocation.');
  }
})

  // var options = {
  //   url: 'http:/localhost:3000/api/items',
  //   type: 'get',
  //   dataType: 'json'
  // };


  // $.ajax(options).done(function(){
  //
  //   var marker = new google.maps.Marker({
  //     position: {-37.817821,144.964570},
  //       // position: {lat: item.latitude,lng: item.longitude},
  //     map: map,
  //     // title: item.title
  //   });
  // })
