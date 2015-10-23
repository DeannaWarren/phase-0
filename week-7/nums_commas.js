// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Becca and Deanna.

// Pseudocode

/*
DEFINE a function that takes an integer
  IF integer is less than 1000
    RETURN integer
  ELSE
    Split integer into array
    Reverse the array
    FOR an index from 3 to the length of the array, adding three each time
      INSERT a comma into the array
    Reverse the array
    Join the array into an integer
    RETURN integer
*/

// Initial Solution


// function makeCommas(number){
//   if (number < 1000){
//     return number;
//   }
//   else {
//     var numArray = number.toString();
//     numArray = numArray.split("");
//     numArray.reverse();
//     for (var i = 3; i <= numArray.length; i+=4) {
//       numArray.splice(i, 0, ",");
//     }
//     numArray.reverse();
//     number = numArray.join("");
//     return number;
//   }
// }


// Refactored Solution

function makeCommas(number){
  var numArray = number.toString();
  numArray = numArray.split("").reverse();
  for (var i = 3; i <= numArray.length; i+=4) {
    numArray.splice(i, 0, ",");
  }
  number = numArray.reverse().join("");
  return number;
}


// Your Own Tests (OPTIONAL)




// Reflection