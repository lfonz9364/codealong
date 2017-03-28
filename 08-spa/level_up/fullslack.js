// accepts an array
// randomly selects on elem and return that elem
// sample(arr)

// 4
var list = [2,4,6,8]

var sample = function(arr) {
  var max = arr.length - 1;
  var index = Math.round(Math.random()) * (0 - max) + max;
  return arr[index];
}
// sample();

//for each element inside the array you want to apply the function
//to it
// the function has signature
//function(elem) {
//
//}
// //each(arr, func)
// each(list, function(elem){
//   console.log(elem);
// })
//
var each = function(arr, func) {
  for(var index = 0; index < arr.length; index++){
    func( arr[index] )
  }
}

var doSomething = function(x){
  var result = x * 2;
  console.log(result);
}

each(list, doSomething);

var Fullslack = {
  each: each
}

Fullslack.author = 'wdi11'
Fullslack.sample = sample;
debugger
// Fullslack.each();
