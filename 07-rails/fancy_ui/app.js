$.ajax({
  url: 'http://localhost:3000/api/dishes'
}).done(function(response) {
  console.log(response);
  response.forEach(function(dish){
    var $header = $('<header class="content">');
    $header.append( $('<span class="right">13h</span>'));
    $header.append( $('<img class="avatar" src="https://openclipart.org/image/2400px/svg_to_png/247320/abstract-user-flat-4.png">'))
    $header.append('DT');

    var $contentImage = $('<div class="image">');
    var star = $('<span class="star">').html('&#9733;');
    $contentImage.append( $('<img src="'+ dish.image_url +'">'));
    $contentImage.append(star);

    var $contentName = $('<div>').addClass('content');
    $contentName.append( $('<h2>').text(dish.name) );
    $contentName.append( $('<h4>').text('at GA') );

    var $footer = $('<header class="content">');
    $footer.append( $('<span class="likes-count right">0</span>'));

    var $card = $('<div>').addClass('ui-card');

    $card.append( $header );
    $card.append( $contentImage );
    $card.append( $contentName );
    $card.append( $footer );

    $('#app').append( $card );



    })
    var $star = $('.star');
    $star.on('click', function(event) {
      var $myTarget = $(event.target)
      .closest('.ui-card') //up
      .find('.likes-count'); //down

      var oldText = $myTarget.text();
      var oldCount = Number(oldText);
      var newCount = oldCount + 1;

      $myTarget.text(newCount);

      $.ajax({
        url: 'http://localhost:3000/api/likes',
        data: { dish_id: dishId },
        method: 'post'
      }).done(function(data){
        $card.find('.like').text(data.likes_count);
      });
    })
}).fail(function() {
  console.log('oh nooooooo!!!')
})
