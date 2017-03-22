console.log('apps');

// searching
// dollar sign is naming convention
// help you remember its a jquery object
var $list = $('ul.list'); // querySelector

// attach event listeners
$list.on('click', 'li', function(event){
  // event.target.className = 'completed';
  // event target is a DOM element
  // $(event.target) return the elem as a jquery object
    // var indexItem = $(event.target).index();
    var itemText = $(event.target).text();
    // var $newListItem = $('<li>'+ itemText+'</li>'); --> insert new element
    var $newListItem = $('<li>')
        .text(itemText)
        .addClass('completed');
    $('ul.done').append($newListItem);
    $(event.target).remove();
    // $(event.target).detach();
    // $('ul.list > li').eq(indexItem).after(event.target);
    // $(event.target).hasClass();
    //$('ul.done').append(event.target);//--> move li/event.target
    //$(event.target).toggleClass('completed');
});

$('ul.done').on('click', 'li', function(event){
  // var indexItem = $(event.target).index();
  // // $(event.target).detach();
  // // $('ul.done > li').eq(indexItem).after(event.target);
  // $('ul.list').append(event.target);
  // $(event.target).toggleClass('completed');
  var itemText = $(event.target).text();
  var $newListItem = $('<li>')
      .text(itemText);
  $list.append($newListItem);
  $(event.target).remove();
});

$('button').on('click', function() {
  var inputValue = $('input').val(); //get value from input box
  var $newListItem = $('<li>').text(inputValue);
  $list.append($newListItem);
  $('input').val(' ');
})

// $('input').on('keypress' function() {
//   var inputValue = $('input').val(); //get value from input box
//   var $newListItem = $('<li>').text(inputValue);
//   $list.append($newListItem);
// })
