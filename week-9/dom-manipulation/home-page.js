// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:


document.getElementById("release-0").setAttribute("class","done");


// Release 1:

document.getElementById("release-1").style.display = "none";

// Release 2:


document.getElementsByTagName("h1").item(0).innerHTML = "I completed release 2.";

// Release 3:


document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 4:


//document.getElementsByClassName("release-4").style.textSize = "2em";
var elements = document.getElementsByClassName("release-4");
for (var i = 0; i < elements.length; i++) {
  elements.item(i).style.fontSize = "2em";
};

// Release 5:

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));


// What did you learn about the DOM?
// >> I learned that it's very closely connected to the html itself. I think the most exciting thing I learned is how to replace a peice of text.
// What are some useful methods to use to manipulate the DOM?
// >> .getElementBy[example] is super helpful. setAttribute is cool, but I'm personally super excited about .style in terms of writing a game or such.
// -->
