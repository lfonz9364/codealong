console.log('crappy calculator');

// API-->horrible
// document.getElementsByTagName('h1')[0].onclick = function() {
//   console.log('i am being pushed around');
// }

// document.getElementsByTagName('h1')[0].addEventListener('click',
//   function() {
//     console.log('i am being pushed around');
//   });

// searching
// to a dom element listen to events
// update some properties of a dom element

var addTwoNumbers = function(num1, num2) {
  return num1 + num2;
}


// button
var crapItBtn = document.querySelector('.crap-it-btn'); //-find only the first specifiec class/tag
//document.querySelectorAll(); //-->find all properties within specified class/tag
// input1
var num1Input = document.querySelector('.num1-input');
// input2
var num2Input = document.querySelector('.num2-input');
//result
var resultInput = document.querySelector('.result');

crapItBtn.addEventListener('click', function() {

  var result = addTwoNumbers(+num1Input.value, +num2Input.value);
  //update my ui
  resultInput.value = result;
});

// another button to clear all the inputs back to the beginning
var clearBtn = document.querySelector('.clear-btn');
clearBtn.addEventListener('click',function() {
  resultInput.value = "";
  num1Input.value = "";
  num2Input.value = "";
});
// theme switcher to work, clicking in the box should update background color
  var themeOne = document.querySelector('.theme-one');
  var themeTwo = document.querySelector('.theme-two');
  var themeThree = document.querySelector('.theme-three');
  var themeFour = document.querySelector('.theme-four');
  var bodyTheme = document.querySelector('body');


  // themeOne.addEventListener('click', function() {
  //   if (themeOne.style.background === "rgb(255, 255, 255)"){
  //     themeOne.style.background = '#ffe4e1';
  //   } else {
  //     themeOne.style.background = '#ffffff';
  //   }
  // });
  //
  // themeTwo.addEventListener('click', function() {
  //   if (themeTwo.style.background === "rgb(255, 255, 255)"){
  //     themeTwo.style.background = '#dda0dd';
  //   } else {
  //     themeTwo.style.background = '#ffffff';
  //   }
  // });
  //
  // themeThree.addEventListener('click', function() {
  //   if (themeThree.style.background === "rgb(255, 255, 255)"){
  //     themeThree.style.background = '#ff6347';
  //   } else {
  //     themeThree.style.background = '#ffffff';
  //   }
  // });
  //
  // themeFour.addEventListener('click', function() {
  //   if (themeFour.style.background === "rgb(255, 255, 255)"){
  //     themeFour.style.background = '#f5fffa';
  //   } else {
  //     themeFour.style.background = '#ffffff';
  //   }
  // });

  // themeOne.addEventListener('click', function() {
  //     bodyTheme.style.background = '#ffe4e1';
  // });
  //
  // themeTwo.addEventListener('click', function() {
  //     bodyTheme.style.background = '#dda0dd';
  // });
  //
  // themeThree.addEventListener('click', function() {
  //     bodyTheme.style.background = '#ff6347';
  // });
  //
  // themeFour.addEventListener('click', function() {
  //     bodyTheme.style.background = '#f5fffa';
  // });



  // var changeBackgroundColor = function (event) {
  //   document.body.style.backgroundColor = getComputedStyle(event.target).backgroundColor;
  // }

// bodyTheme.addEventListener('click', function(event) {
// });

themeOne.addEventListener('click', function(event) {
    document.body.style.background = getComputedStyle(event.target).background;
  // debugger;
    // document.body.style.backgroundColor = event.target.getAttribute('data-color');
});
