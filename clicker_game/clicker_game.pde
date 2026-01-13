import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



// mode framework
int mode;
final int INTRO = 0; //final means the value is locked
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;

float x, y, d;
float vx, vy;
int highScore, score, lives;
 
//sound variables
Minim minim; 
AudioPlayer theme, gameover, coin, scream, click;

void setup () {
  size (800, 800);
  mode = 0;// for test your modes
  textAlign (CENTER, CENTER);
 
  //initial
  x = width/2;
  y = height/2;
d =  random (80, 150);
vx = random (-5, 5);
vy = random (-5, 5);
lives = 3;

//minim
minim =  new Minim (this);
theme = minim.loadFile ("MUSIC.mp3");
gameover = minim.loadFile ("violin-lose-4-185125.mp3");
coin = minim.loadFile ("retro-coin-4-236671.mp3");
click = minim.loadFile ("mouse-click-290204.mp3");
scream = minim.loadFile ("80s-scream-255968.mp3");
}

void draw () {
  if (mode == INTRO) {
    intro ();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause ();
  } else if (mode ==GAMEOVER) {
    gameover ();
  } else { // to end the "else if"
    println ("Error: Mode = " + mode);
  }
}
