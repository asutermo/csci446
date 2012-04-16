var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);

$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
});

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function updateScore(score) {
  $('h2#score span#guessesLeft').append(score);
}

function guess() {
	var guess = parseInt(document.forms[0].guess.value)
	documents.forms[0].guess.value = num;
	guessesLeft--;
	updateScore(guessesLeft);
}

function getRandom() {
	var rand = Math.floor(Math.random() * 101);
	$('h2#number span#randNum').append(rand);
	return rand;
}