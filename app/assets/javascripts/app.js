var map = new google.maps.Map($('.map')[0],{
    zoom:5,
    center: {lat: -37.813155, lng:144.964078}
  })

  var options = {
    url: 'http://localhost:3000/api/items',
    type: 'get',
    // limit: 5,
    dataType: 'json'
  };
