void pause () {
  theme.pause ();
  fill (0);
  textSize (72);
  text ("PAUSE", width/2, height/2);
  textSize (36);
  text ("press anywhere to continue", width/2, height/2 + 50);
}

void pauseClicks () {
  if (dist(mouseX, mouseY, 100, 100) < 50) 
    click.play ();
    click.rewind ();
    theme.play ();
    mode = GAME;
}
