 // JavaScript Olympics

// I paired [ with Steven,Deanna] on this challenge.

// This challenge took me [#] hours.


// Bulk Up

function win(array)  {
  for (var i = 0; i < array.length; i++) {
    array[i].win = console.log(array[i].name + " won the " + array[i].event);
  }
};

// Jumble your words

function backwards(word) {
  console.log(word.split("").reverse().join(""))
}

// 2,4,6,8

function evenNumbers(array) {
  return array.filter( isEven );
}

function isEven(integer) {
  return integer % 2 === 0;
}

// "We built this city"

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
}

    //DRIVER CODE
    var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
    console.log(michaelPhelps.constructor === Athlete)
    console.log(michaelPhelps.name + ", " + michaelPhelps.sport + ": " + michaelPhelps.quote)

// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
    I'm still getting used to how functions are created and used, but this did help.
What are constructor functions?
    constructor functions are similar to ruby classes in that they create objects.
How are constructors different from Ruby classes (in your research)?
    They are not like ruby classes, because of reasons. (Looks it up some more, this is confusing. Everything looks like they're saying "Yes like classes, but not.") Best I can figure, a constructor makes an object, and can have functions. A class makes an object and has by necessity methods that that object can use. Not a great wording but this is complicated.