var max = prompt('Please enter the maximum number');
var min = 0;
var randomNum = Math.floor(Math.random() * (max - min) + min);
var userGuess = prompt('Please enter your guess number!');

while (userGuess != randomNum) {
  if (userGuess < randomNum) {
      alert("Wrong, guess higher!");
    } else if (userGuess > randomNum) {
      alert("Wrong, guess lower!");
    }
    userGuess = prompt('Please enter your guess number!');
  }
  alert("Congratulations!!");
