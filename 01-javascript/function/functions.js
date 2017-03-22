console.log('fun fun functions');

// variable scope

var numberWeTellTheWorld = 500000; //Global variable

var launchMissile = function() {
  var numberOfMissiles = 0; //local variable
  console.log(numberWeTellTheWorld);
  console.log('missed');
}

var hello = function(name) { //parameter
  console.log('hello ' + name);
}

hello('fullslack'); //argument

var doubleMe = function(number) {
  return number * 2;
}

//YO! -> yo

var calmYourself = function(name){
  var result = name.toLowerCase();
  return result = result.replace('!',"");
}

//Alternate YO! to yo
var calmYourself = function(name){
  //var result = name.toLowerCase();
  // var exclamationRemoved = result.split('!');
  return exclamationRemoved = exclamationRemoved[0];
}
