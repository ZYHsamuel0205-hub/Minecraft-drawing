void gameover () {
  theme.pause ();
  gameover.play ();
  background (255, 0, 0);
  fill (255);
  text ("GAMEOVER", width/2, height/2);
   lives = 3;
    if (score > highScore) {
    highScore = score;
    }
text ("High Score: " + highScore, width/2, height/2 + 100);
//quit button
rect (550, 650, 200, 100);
fill (0);
text ("Quit", 650, 700);
}

void gameoverClicks () {
  mode = INTRO;
  theme.rewind ();
  if (mouseX > 550 && mouseX < 750 && mouseY > 650 && mouseY < 750) {
  exit ();
  }
}
