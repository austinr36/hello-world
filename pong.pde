float ballX = 200 ; //X position
float ballY = 200 ; //Y position 
float initialX = random (-5, 5) ;
float initialY = random (10, 15) ;
float paddleX = mouseX ;
PFont font ;
int counter = 0 ;
float random1 = 0 ;
float random2 = 0 ;
float random3 = 0 ;



void setup() {
  size (400, 400) ;
  smooth() ;
  font = loadFont ("SansSerif-48.vlw") ;
  textFont (font) ;
}


void draw() {
  float millis = millis () ;
  float timer = millis / 1000 ;
  background(256 -random1 , 256 - random2, 256- random3) ;
  fill (random1, random2, random3) ;
  textSize (15) ;
  text (counter , 30 , 35) ; // counter
  text ("Austin Rath's Pong", 250, 35) ;
  ellipse (ballX, ballY, 20, 20) ;
  rect(mouseX -40 , height -20, 80, 20, 5) ;
  text (timer , 115, 35) ;
  println (timer) ;
  ballmovement () ;
  paddle (); 
  respawn () ;
}

void ballmovement () {
  if ((ballX <= 20) || (ballX >= width-20)) {
    initialX= -initialX ;
  }
if ((ballY <= 20) ) {
    initialY= -initialY ;
  }
ballX += initialX ;
ballY += initialY ;
}

void paddle () {
  
    if ((ballX > mouseX -40) && (ballX < mouseX + 40) && 
    (ballY > height - 40) && (ballY < height - 30)) {
      initialY= -initialY ;
      random1 = random (0, 255) ;
      random2 = random (0, 255) ;
      random3 = random (0, 255) ;
    }
}

void respawn () { 
   if (ballY >= height + 10) {
      ballX = 200 ;
      ballY = 200 ;
      counter += 1 ;
      println (counter) ;
    }
  
}