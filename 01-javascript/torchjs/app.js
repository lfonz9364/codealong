document.body.style.backgroundColor = "black";

var letThereBeLight = function() {
    document.body.style.backgroundColor = 'white';
  }

var letThereBeDark = function() {
    document.body.style.backgroundColor = 'black';
  }

var switchColor = function(){
  if (document.body.style.backgroundColor === 'black'){
    letThereBeLight();
  } else {
    letThereBeDark();
  }
}


document.getElementById('switch').addEventListener('click', switchColor); //--> callback function --> no parenthesis ()
