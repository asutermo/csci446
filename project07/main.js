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
		var win = confirm("You won! Do you want to play again?");
		playAgain(win);
	}
	if (gss < num) {
		var sMessage = 'Too low';
		$('lowContainer').empty();
		$('body').append('<div style="display:none" id="lowContainer">'+sMessage+'</div>');
		$('#lowContainer').css({position:'absolute',top:'10em',left:'35%',marginLeft:'0em',fontWeight:'bold',lineHeight:'2em', background:'#313131',border:'3px double #ccc',padding:'100px'}).fadeIn('slow',function(){
			setTimeout(function(){$('#lowContainer').fadeOut()},1000);
		});
	}
	if (gss > num) {
		var sMessage = 'Too high';
		$('highContainer').empty();
		$('body').append('<div style="display:none" id="highContainer">'+sMessage+'</div>');
		$('#highContainer').css({position:'absolute',top:'10em',left:'35%',marginLeft:'0em',fontWeight:'bold',lineHeight:'2em', background:'#313131',border:'3px double #ccc',padding:'100px'}).fadeIn('slow',function(){
			setTimeout(function(){$('#highContainer').fadeOut()},1000);
		});
	}
	if (guessesLeft <= 0) {
		var lose = confirm("LOSER!!!! Want to play again?");
		playAgain(lose);
	}
}