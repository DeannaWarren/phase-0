 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Take care of a kitty.
// Goals: After [tbd] turns, the kitty has a sufficient happines level
// Characters: Cat(variable name)
// Objects: cat(happiness), bowl(water,food), litterBox(poop)
// Functions:
//    pet = increase happiness
//    fillFood = increase food to 100% full
//    fillWater = increase water to 100% full
//    cleanLitter = decrease poop to 0%
//    turnEnd = decrease happiness, food, and water; increase poop
//    play = ask for user input, perform appropriate function, turnEnd


// Pseudocode

/*

// PART ONE - story and action (new cat)
// story: Go to animal shelter, pick out a cat.
// action: set a variable catName equal to the user input when asked
//   for the name of the new cat.
// story:Worker will visit house in 5 days to see if the cat is a good fit.

// PART TWO- setup (set up objects and related variables)
// set up the following things with associated variables
// cat =
//   cat's name is equal to catName from Part One
//   cat's happiness starts at 50%
// bowl =
//   food starts at 100%
//   water starts at 100%
// litterBox =
//   poop starts at 0%

// set up the following code blocks
// code block pet does
//   increase happiness by 10%
// code block fillFood does
//   increase food to 110% full
// code block fillWater does
//   increase water to 110% full
// code block cleanLitter does
//   decrease poop to 0%
// code block turnEnd does
//   decrease happiness, food, and water; increase poop
// code block play does (for the number of turns decided)
//   ask for user input
//   perform appropriate function
//   shows current information
//   run turnEnd code block

*/

// Initial Code

// PART ONE - story and action (new cat)
// story: Go to animal shelter, pick out a cat.
// action: set a variable catName equal to the user input when asked
//   for the name of the new cat.
// story:Worker will visit house in 5 days to see if the cat is a good fit.

// PART TWO- setup (set up objects and functions)
// set up the following Objects and Properties
var Cat = {
    //name: catName,
    joy: 50,
};
var Bowl = {
    food: 100,
    water: 100,
};
var LitterBox = {
    poop: 0,
};
// set up the following code blocks
function pet() {
    Cat.joy += 20;
}
function fillFood() {
    Bowl.food = 110;
}
function fillWater() {
    Bowl.water = 110;
}
function cleanLitter() {
    LitterBox.poop = -10;
}
function turnEnd() {
    Cat.joy -= 10;
    Bowl.food -= 10;
    Bowl.water -= 10;
    LitterBox.poop += 10;
}
function play(){
    for (turns = 1; turns < 10; turns++) {
        console.log("Begin Turn " + turns);
        console.log(Cat,Bowl,LitterBox)
        console.log("What would you like to do? (please type 'pet', 'feed', 'give water', 'clean litter'.)(type exit to force quit)");
        var userInput = prompt("What would you like to do? (please type 'pet', 'feed', 'give water', 'clean litter'.)");
        if(userInput === "pet" ){
            pet();
        }
        else if(userInput === "feed" ){
            fillFood();
        }
        else if(userInput === "give water" ){
            fillWater();
        }
        else if(userInput === "clean litter" ){
            cleanLitter();
        }
        else if(userInput === "exit"){
            console.log("Goodbye!")
            break;
        }
        else {
            console.log("That is not a valid input. You have forfeited this turn.");
        }
        turnEnd();
    }
}
//   ask for user input
//   perform appropriate function
//   shows current information
//   run turnEnd code block


// DRIVER CODE

play()

// Refactored Code






// Reflection
//
//
//
//
//
//
//
//