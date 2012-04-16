var guessesLeft = 10;
var highScores = new Array([9, "HarryJamesPotter"], [3, "ZedCthulhu"], [2, "NearlyDied"]);
var num = Math.floor(Math.random() * 100 + 1);

$(function() {
  updateScore(guessesLeft);
  populateHighScores(highScores);
  displayRandom(num);
});

function populateHighScores(scores) {
  for (var i = 0; i < scores.length; ++i) {
    $('div#highScores').append("<p>" + scores[i][0] + " " + scores[i][1] + "</p>");
  }
}

function displayRandom(randomNum) {
  $('h2#number span#numberToGuess').append(randomNum);
}

function updateScore(score) {
  $('h2#score span#guessesLeft').empty();
  $('h2#score span#guessesLeft').append(score);
}

function guessNumber() {
	guessesLeft--;
	updateScore(guessesLeft);

	var gss = document.forms["guessTheNumber"].elements["guess"].value;
	alert(gss);

	if (guessesLeft <= 0) {
		alert("LOSER!!!!");
	}
}