/*
sandbox notes
  !!RUBY TO JAVASCRIPT CHALLENGE, week-6/credit-card/my_solution to week-9/review.js !!
  file starts line 7
  */

/*
INTRO NOTES
  9.2.2 Ruby to Javascript challenge Week 9
  I will be translating the code from Week 6 credit-card challenge.
  I will also be attempting to make my own JS tests by copying the assert function from week 8 gradebook challenge and using the tests there as a template, because I've been researching TDD and it would be nice to be able to make it work.
  */

/*
CREDIT CARD VALIDATION FORMULA FROM 6.7 (references to ruby)
  -For this challenge, you will need to break down the algorithm into the following steps. You will probably want to break these down into individual methods that are called when you run the #check_card method.
  -Starting with the second to last digit, double every other digit until you reach the first digit.
  -Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).
  -If the total is a multiple of ten, you have received a valid credit card number!
  -Your class will need to return true or false when you call the #check_card method. Your class needs to be initialized with a credit card number that is exactly 16 digits -- otherwise you should receive an ArgumentError.
  */

//*** Pseudocode ***//
  /*
  take a credit-card number as a 16-digit number
    convert the credit card number into a list of digits
    reverse the list
    check that the number of digits is 16
      otherwise display an error
          convert to a number


  FOR each even-index number
    multiply by two
  Combine the number list and separate it out into single digits again
    take the sum of all digits.
  if the sum of digits is evenly divisible by 10
    return true for a valid credit card number!
  */

//*** Initial Solution ***//

function inputNumber(number){
  var input = number.toString();
  if (input.length != 16){
    return false;
  }
  else {
    return input;
  }

}
function reverseArray(numberString){
  var newArray = numberString.toString();
  newArray = newArray.split("");
  newArray = newArray.reverse();
  return newArray;
}

function arrayToNumber(array){
  for (var i = array.length - 1; i >= 0; i--) {
    array[i] = Number(array[i]);
  };
  console.log(array);
  return array;
}

//*** Refactored Solution ***//
/* refactor notes : */

//*** Driver code? if any***//

// //*** TESTS - self made except the assert function, see top of file ***//
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}
//** EXAMPLE BELOW (extrapolated from different assignment)**//
// assert(
//   (test to return true),
//   "message \n",
//   "test-number. "
// );

assert(
  (inputNumber instanceof Function),
  "inputNumber should be a function. \n",
  "1. "
);
assert(
  (inputNumber(1234567890123456) == 1234567890123456),
  "inputNumber should take a single argument \n",
  "2. "
);
assert(
  (inputNumber(56) == false),
  "inputNumber should return false if length is unequal to 16. \n",
  "3. "
);
assert(
  (inputNumber(1234567890123456) == "1234567890123456"),
  "inputNumber should return a string \n",
  "4. "
);
assert(
  (reverseArray instanceof Function),
  "reverseArray should be defined as a function \n",
  "5. "
);
assert(
  //this is strangely worded, I was getting the right response but failing the test because of how it was written.
  (reverseArray("1234")[0] == '4'),
  "reverseArray should return an array with the input in reverse\n",
  "6. "
);
assert(
  (arrayToNumber instanceof Function),
  "arrayToNumber should be defined as a function \n",
  "7. "
);
assert(
  ((arrayToNumber(["45,43,29"])[0]) instanceof Number),
  "arrayToNumber should return numbers not strings \n",
  "8. "
);
