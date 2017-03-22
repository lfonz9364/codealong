//write a function which accept 2 arguments
//the array
//group of eg 3

//return a nested array of the groups

var students =['Marta', 'Aniko', 'Sam', 'Mark','Gat','Barry','Willy','Will','Kev','Gerard','Helmi','Sandesh','Soul','Zach'];
var group = [];
var max = students.length;
var min = 0;
var numberOfMember;
var roundedGroupNumber = Math.floor(students.length/numberOfMember);

var rdmNumber = function(min,max) {
  Math.floor(Math.random() * (max-min)) + min;
}

var group = function(students) {
  splited = student.split(',');
  for (i = 0; i < numberOfMember; i++){
    group.push(splited[rdmNumber]);
  }
}


function partyQuiz(students,group) {
  var groupings = [];
  for (j = 0;j < roundedGroupNumber;j++) {
    obj.groupings.push(group);
  }

  }
}

//complete function on hw_friday.js under homework/wk01/5-fri/
