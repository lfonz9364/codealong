console.log('functions2');

// functions 1,2
var addTwoNumbers = function(num1,num2) {
  return num1 + num2;
}

console.log(addTwoNumbers(2,3));

var awesomeObject ={};
awesomeObject.owner = 'me'; //function as values
awesomeObject.addTwoNumbers = addTwoNumbers; //-->function as method when used with (), it will return the value while without is assigning the function

var bam = function(){
  console.log("bam!");
}

// setTimeout(somefunction, 10000); ---> delay function execution --> in console do not need to put ().
