// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var Deanna = "deanna is awesome"
console.log(Deanna)


//short program
// COMMENTED OUT SO NODE WILL WORK
// prompt("What is your favorite fruit?")
// console.log("Hey! That's my favorite, too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board DOING FIZZBUZZ

for (var number = 1; number < 101; number++)
  if (number % 3 === 0 && number % 5 === 0) (console.log("FizzBuzz"))
  else if (number % 3 === 0) (console.log("Fizz"));
  else if (number % 5 === 0) (console.log("Buzz"));
  else (console.log(number));

// Functions

// Complete the `minimum` exercise.

var min = function(num1, num2) {
  return(Math.min(num1,num2));
}
console.log(min(0,10))
console.log(min(0,-10))

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {};
function newInfo(query, fact) {
  me[query] = fact;
}

newInfo("Name", "Deanna Warren");
newInfo("Age", 24)
newInfo("Favorite Foods", ["Mac'n'cheese","Sushi","Ravioli"]);
newInfo("Quirk", "I'm a crafter.")

console.log(me["Name"]);
console.log(me["Age"]);
console.log(me["Favorite Foods"]);
console.log(me["Quirk"]);