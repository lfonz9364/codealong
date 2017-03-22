var year = new Date().getFullYear();
function date(year){
  if (year === 2015) {
    console.log("I'm in the present!");
    } else if (year < 2015) {
    console.log("Whoa! Blast from the past!");
    } else if (year > 2015){
    console.log("Greetings from the future!");
  }
}
