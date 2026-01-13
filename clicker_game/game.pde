void game () {
  background (0, 255, 0);

  text ("Score:" + score, width/2, 50);
  text ("Lives:" + lives, width/2, 100);

//pause button
fill (255); 
stroke (0);
circle (100, 100, 100);
  //target
  fill (255);
  stroke (0);
  strokeWeight (5);
  circle (x, y, d);

  x = x + vx;
  y = y + vy;

  //bounce
  if (x < d/2 || x > width - d/2) {// "||" means "or"
    vx = vx * -1;
  }
  if (y < d/2 || y > height - d/2) {
    vy = vy * -1;
  }
}

void gameClicks () {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    vx = vx * 1.05;
    vy = vy * 1.05;
    coin.rewind ();
    coin.play ();
  } else if (dist(mouseX, mouseY, 100, 100) < 50) {
  mode = PAUSE; 
  click.rewind ();
  click.play ();
  } else {
    lives = lives - 1;
    scream.play ();
    scream.rewind ();
    if (lives == 0) mode = GAMEOVER;
  }
}
