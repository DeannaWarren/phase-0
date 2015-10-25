//PUTTING SUMMARY AT TOP  FOR READABILITY
/*
Tests 8 and 9 failed, which were both of the median tests. For an odd length array, it takes the mean of the median and next number up. For the even length array, I thought it should work, but it does not take into account 0-indexing. All of the other calculations worked however.
*/
oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]
// Add the finished solution here when you receive it.

function sum(arr) {
    var sum = 0
  for(var i = 0; i < arr.length; i++) {
    sum += arr[i]
  }
  return sum
}
//User plugs some set of numbers into the program sum. The program goes through each number and tallies it to a counter named sum. The program will return the value of sum.

function median(arr) {
  arr = arr.sort();
  var half = Math.floor(arr.length / 2);
  return (arr[half] + arr[half + 1])/2
}
// User plugs some set of numbers into the program median. The program sorts the number from least to greatest. The program finds and returns the number in the middle or the average of the two middle numbers (if there are an even number of numbers)

function mean(arr) {
  return sum(arr)/arr.length
}
//User plugs some set of numbers into the program mean. This program uses the sum program to get a total and divides that value by the number of numbers. It returns outcome.

// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)