console.log('apps');

// document.querySelector('li').addEventListener('click', function() {
//   document.querySelector('li').className = 'completed';
// });

// // function applied to parent element will affect its child element.
// document.querySelector('ul').addEventListener('click', function(event){
// // cross out if the user clicked on a list item
//   if  (event.target.tagName === 'LI') {
//     event.target.className = 'completed';
//   }
// });

//search for button
// button listen on click
// grab value from input
// create a new dom element - specially a new list item with the contents from the input
//

// document.querySelector('button').addEventListener('click', function() {
//   var newListItem = document.createElement('li');
//   newListItem.textContent = document.querySelector('input').value;
//   document.querySelector('ul').appendChild(newListItem);
//   document.querySelector('input').value = '';
// });

// document.querySelector('input').addEventListener('keypress', function(event) {
//   if (event.which == 13 || event.keyCode == 13) {
//     var newListItem = document.createElement('li');
//     newListItem.textContent = document.querySelector('input').value;
//     document.querySelector('ul').appendChild(newListItem);
//     document.querySelector('input').value = '';
//     return false;
//   }
//   return true;
// });

// <div class="one"></div>
// addClass(elem, "two")
// <div class="one two"></div>
var addclass = function(element, className) {
  element.className += (' ' + className);
}

// <div class="one two three"></div>
// try to remove two from class name removeClass(element, "two")
// <div class=""></div>

var removeClass = function(element, className) {
  element.className = element.className.split(' ').filter
  (function(item) {
    if (item === className) {
      return true;
    }
  }).join(' ');
}

// filter
// ['one', 'two', 'three'].filter(function() {
//   console.log(item);
//   return true;
// })
