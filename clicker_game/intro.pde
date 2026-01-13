void intro () {
  //resetting
  score = 0;
  vx = random (-5, 5);
  vy = random (-5, 5);

  theme.play ();
  background (255);

  strokeWeight (1);
  fill (0);
  textSize (72);
  text ("CLICKER GAME", 400, 400);

  fill (255);
  rect (300, 500, 200, 100);
}

void introClicks () {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600)
    mode = GAME;
  click.play ();
  click.rewind ();
}
