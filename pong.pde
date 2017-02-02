float ballX = 200 ; //X position
float ballY = 200 ; //Y position 
float initialX = random (-5, 5) ;
float initialY = random (-15, 15) ;
float paddleX = mouseX ;

void setup() {
  size (400, 400) ;
  smooth() ;

}


void draw() {
  background(255) ;
  fill (0) ;
  ellipse (ballX, ballY, 20, 20) ;
  
  //code for ball movement

  if ((ballX <= 20) || (ballX >= width-20)) {
    initialX= -initialX ;
  }
if ((ballY <= 20) ) {
    initialY= -initialY ;
  }
ballX += initialX ;
ballY += initialY ;
   
   //code for paddle
   fill (0) ;
   rect(mouseX -40 , height -20, 80, 20, 5) ;
    if ((ballX > mouseX -40) && (ballX < mouseX + 40) && 
    (ballY > height - 40) && (ballY < height)) {
      initialY= -initialY ;
    }
    
    // respawn after it fell
    if (ballY >= height + 10) {
      ballX = 200 ;
      ballY = 200 ;
    }
  
}