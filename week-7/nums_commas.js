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
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
    I approached the problem differently, but a lot of that is that I came totally backwards at the problem for my solo, and had an aha moment on Sunday and wasn't able to find time to redo the entire challenge by then.
What did you learn about iterating over arrays in JavaScript?
    I learned that for loops are awesome. But on a more serious note, I learned a lot about how for loops work and how the syntax works.
What was different about solving this problem in JavaScript?
    A lot of the syntax is different, but it's not super different in the core of it.
What built-in methods did you find to incorporate in your refactored solution?
    we used .toString, .split, .reverse, and .join in our refactored solution.
*/