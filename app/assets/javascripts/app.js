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


  $.ajax(options).done(function(data){
    _.each(data, function(item){

      var marker = new google.maps.Marker({
        position: {lat: dish.latitude,lng: dish.longitude},
        map: map,
        title: item.title
      });
    });
    
  })
