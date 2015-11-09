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
  var newArray = numberString
  newArray = newArray.split("");
  newArray = newArray.reverse();
  return newArray;
}

function arrayToNumber(array){
  var strings = array;
  var numbers = strings.map(function(num) {
    return Number(num);
  });
  return numbers
}

function isOdd(integer) {
  return integer % 2 === 1;
}

function doubleOddIndex(array){
  var newArray = [];
  for (var i = 0; i < array.length; i++) {
    if (isOdd(i) == true){
      newArray.push(array[i] * 2);
    }
    else{
      newArray.push(array[i]);
    }
  };
  return newArray;
}

function arrayToString(array){
  var newString = array.join("");
  return newString;
};

function sumArray(array){
  var sum = 0
  for (var i = 0; i < array.length; i++) {
    sum += array[i];
  };
  return sum;
};

function validate(num){
  return num % 10 == 0;
};


//*** Refactored Solution ***//
/* refactor notes : */

//*** Driver code? if any***//

// console.log(arrayToNumber(["3","5","7"]))

var fullProcess = function(number){
  var input = inputNumber(number);
  var reversed = reverseArray(input);
  var numbered = arrayToNumber(reversed);
  var doubled = doubleOddIndex(numbered);
  var stringed = arrayToString(doubled);
  var splitAgain = reverseArray(stringed);
  var numAgain = arrayToNumber(splitAgain);
  var sum = sumArray(numAgain);
  var last = validate(sum);
  return last;
}
console.log(fullProcess(1234567890123456))
console.log(fullProcess(4508900123996399))


// //*** TESTS - self made except the assert function, see top of file ***//
function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}
// ** EXAMPLE BELOW (extrapolated from different assignment)**//
// assert(
//   (X),
//   "X \n",
//   "X. "
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
  (inputNumber(1234567890123456) === "1234567890123456"),
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
  (reverseArray("1234")[0] === '4'),
  "reverseArray should return an array with the input in reverse\n",
  "6. "
);
assert(
  (arrayToNumber instanceof Function),
  "arrayToNumber should be defined as a function \n",
  "7. "
);
assert(
  (arrayToNumber(["5","3","6"])[0] === 5),
  "arrayToNumber should return numbers \n",
  "8. "
);
assert(
  (isOdd instanceof Function),
  "isEven should be defined as a Function \n",
  "9. "
);
assert(
  (isOdd(222) == false && isOdd(333) == true),
  "isEven should return true for even numbers and false for odd numbers\n",
  "10. "
);
assert(
  (doubleOddIndex instanceof Function),
  "doubleEvens should be defined as a function \n",
  "11. "
);
assert(
  (doubleOddIndex([1,1,2,2])[1] === 2),
  "doubleOddIndex should double the numbers at odd index of an array \n",
  "12. "
);
assert(
  (arrayToString instanceof Function),
  "arrayToString should be defined as a function\n",
  "13. "
);
assert(
  (arrayToString([1,2,3,4,5]) === "12345"),
  "arrayToString should return a single string \n",
  "14. "
);
assert(
  (sumArray instanceof Function),
  "sumArray should be a function \n",
  "15. "
);
assert(
  (sumArray([5,5,5,5]) === 20),
  "sumArray should return sum of array elements \n",
  "16. "
);
assert(
  (validate instanceof Function),
  "validate should be defined as a function\n",
  "17. "
);
assert(
  (validate(55) == false && validate(60) == true),
  "Numbers divisible by 10 should return true \n",
  "18. "
);
assert(
  (fullProcess(4508900123996399) == true),
  "fullProcess should return true when given a valid number \n",
  "18. "
);
assert(
  (fullProcess(4508900123996393) == false),
  "fullProcess should return false when given a invalid number \n",
  "19."
);