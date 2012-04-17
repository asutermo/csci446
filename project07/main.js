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

function playAgain(continueGame) {
	if (continueGame == true) {
		document.getElementById("btnGuess").disabled=false;
		location.reload();
	}
	else {
		document.getElementById("btnGuess").disabled=true;
		document.getElementById("btnGuess").value="Reset game below to play again!";
	}
}

function play() {
	location.reload();
}

function guessNumber() {
	guessesLeft--;
	updateScore(guessesLeft);

	var gss = document.forms["guessTheNumber"].elements["guess"].value;
	
	if (gss == num) {
		$('h3#msg span#message').empty();
		$('h3#msg span#message').append("You win!!!!!!!");
		var win = confirm("You won! Do you want to play again?");
		playAgain(win);
	}
	if (gss < num) {
		$('h3#msg span#message').empty();
		$('h3#msg span#message').append("Too low!!!");
	}
	if (gss > num) {
		$('h3#msg span#message').empty();
		$('h3#msg span#message').append("Too high!!!");
	}
	if (guessesLeft <= 0) {
		$('h3#msg span#message').empty();
		$('h3#msg span#message').append("You lose!!!!!!!");
		var lose = confirm("LOSER!!!! Want to play again?");
		playAgain(lose);
	}
}