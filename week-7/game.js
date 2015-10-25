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

PART ONE - story and action (new cat)
story: Go to animal shelter, pick out a cat.
action: set a variable catName equal to the user input when asked
  for the name of the new cat.
story:Worker will visit house in 5 days to see if the cat is a good fit.

PART TWO- setup (set up objects and related variables)
set up the following things with associated variables
cat =
  cat's name is equal to catName from Part One
  cat's happiness starts at 50%
bowl =
  food starts at 100%
  water starts at 100%
litterBox =
  poop starts at 0%

set up the following code blocks
code block pet does
  increase happiness by 10%
code block fillFood does
  increase food to 110% full
code block fillWater does
  increase water to 110% full
code block cleanLitter does
  decrease poop to 0%
code block turnEnd does
  decrease happiness, food, and water; increase poop
code block play does (for the number of turns decided)
  ask for user input
  perform appropriate function
  shows current information
  run turnEnd code block

PART THREE- (win?)
function win?
 if joy + food + water + (100-poop) > 300
     return true

function finish
 if win? = true
    story: Yay this is a good match, have fun with your kitty
 else
    story: Hey, this kitty doesn't look very happy. I think we should take them back. Come back when you're ready to try again.
*/

// Initial Code

// PART ONE - story and action (new cat)
console.log("Welcome to the local animal shelter! We have the perfect cat for you! What would you like to name them?")
var catName = prompt("What would you like to name your cat?")
console.log("Awesome. Hopefully you and " + catName + "get along well. We'll be by in a bit to make sure everything is going well!")

var Cat = {
    name: catName,
    joy: 50,
}
var Bowl = {
    food: 100,
    water: 100,
}
var LitterBox = {
    poop: 0,
}
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
function win() {
    if (Cat.joy + Bowl.food + Bowl.water + (100-LitterBox.poop) > 250){
        console.log("Wow, this cat seems happy! I suppose that they should stay with you! I hope you enjoy each other's company, because they're a healthy kitty and will be with you for a long time.");
        console.log("YOU WIN");
    }
    else {
        console.log("This cat doesn't seem very happy! I think I should take it back to the shelter. Feel free to try again later.");
        console.log("YOU LOSE");
    }
}
function play() {
    for (var turns = 1; turns < 25; turns++) {
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
    win()
}


// Refactored Code

//objects and functions
var Cat = {
    name: catName,
    joy: 50,
}
var Bowl = {
    food: 100,
    water: 100,
}
var LitterBox = {
    poop: 0,
}
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
function gameStart() {
    console.log("Welcome to the local animal shelter! We have the perfect cat for you! What would you like to name them?")
    var catName = prompt("What would you like to name your cat?")
    console.log("Awesome. Hopefully you and " + catName + "get along well. We'll be by in a bit to make sure everything is going well!")
}
function win() {
    if (Cat.joy + Bowl.food + Bowl.water + (100-LitterBox.poop) > 250){
        console.log("Wow, this cat seems happy! I suppose that they should stay with you! I hope you enjoy each other's company, because they're a healthy kitty and will be with you for a long time.");
        console.log("YOU WIN");
    }
    else {
        console.log("This cat doesn't seem very happy! I think I should take it back to the shelter. Feel free to try again later.");
        console.log("YOU LOSE");
    }
}
function play() {
    gameStart()
    for (var turns = 1; turns < 25; turns++) {
        alert("Begin Turn " + turns);
        alert("Happiness level is at " + Cat.joy + "%. Use 'pet' to raise. Food bowl is " + Bowl.food)
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
    win()
}

//Game Play

play()


// Reflection
//
//
//
//