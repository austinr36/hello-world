PImage eng ;
PFont text ;
float scale1 = 1 ;
float scale2 = 1 ;
float tintred = 0 ;
float tintgreen = 0;
float tintblue = 0;
float transparency = 0;
float rotation = 0 ;

void setup () {
  size (600, 400) ;
  smooth () ;
  background (0) ;
  frameRate (10) ;
}

void draw () {
  background (0) ;
  returnNormal () ;
  images (); 
  scaleup () ;
  scaledown() ;
  redfilter () ;
  greenfilter () ;
  bluefilter () ;
  rotate() ;
  translate (400, 200) ;
  rotate (rotation) ;
  image (eng, -200, -200, 400 * scale1, 400 * scale2 ) ;
  stroke (0) ;
  fill (tintred, tintgreen, tintblue, transparency) ;
  rect (-200, -200, 400 * scale1, 400 * scale2) ;
} 



// Functions

void images () { 
  eng = loadImage ("processingpic.jpg") ;
  text = loadFont ("Serif-48.vlw") ;
  textFont (text) ;
  fill (255) ;
  textSize (36) ;
  text ("Red" , 20, 50) ; 
  text ("Green" , 20, 100) ; 
  text ("Blue" , 20, 150) ; 
  text ("Rotate" , 20, 200) ; 
  text ("Scale+" , 20 , 250) ;
  text ("Scale-" , 20 , 300) ;
  text ("Normal" , 20, 350) ;
  noFill () ;
  stroke (255) ;
  rect (17, 55, 60, -36) ;
  rect (17, 105, 90, -36) ;
  rect (17, 155, 80, -36) ;
  rect (17, 205, 100, -36) ;
  rect (17, 255, 105, -36) ;
  rect (17, 305, 95, -36) ;
  rect (17, 355, 115, -36) ;
}



void rotate () {
  if ((17 < mouseX) && (17+100 > mouseX) &&  //x value box
  (205-36 < mouseY)  &&   (mouseY < 205) &&  // y value box
  (mousePressed == true))      // mouse pressed, use same format for every function
  {
   rotation += PI/2 ;
  }
}


void scaleup () {
  if ((17 < mouseX) && (17+90 > mouseX) &&  //x value box
  (255-36 < mouseY)  &&   (mouseY < 255) &&  // y value box
  (mousePressed == true))      // mouse pressed, use same format for every function
  {
    scale1 += 0.05 ;
    scale2 += 0.05 ;
  }
}

void scaledown () {
  if ((17 < mouseX) && (17+95 > mouseX) &&  //x value box
  (305-36 < mouseY)  &&   (mouseY < 305) &&  // y value box
  (mousePressed))      // mouse pressed, use same format for every function
  {
    scale1 -= 0.05 ;
    scale2 -= 0.05 ;  
  }
}

void redfilter () {
  if ((17 < mouseX) && (17+60 > mouseX) &&  //x value box
  (55-36 < mouseY)  &&   (mouseY < 55) &&  // y value box
  (mousePressed == true))      // mouse pressed, use same format for every function
  {
   tintred = 200 ;
   tintgreen = 0 ;
   tintblue = 0 ;
   transparency = 80; 
  }
}

void greenfilter () {
  if ((17 < mouseX) && (17+90 > mouseX) &&  //x value box
  (105-36 < mouseY)  &&   (mouseY < 105) &&  // y value box
  (mousePressed))      // mouse pressed, use same format for every function
  {
    tintred = 0 ;
   tintgreen = 150 ;
   tintblue = 0 ;
   transparency = 80; 
  }
}

void bluefilter () {
  if ((17 < mouseX) && (17+80 > mouseX) &&  //x value box
  (155-36 < mouseY)  &&   (mouseY < 155) &&  // y value box
  (mousePressed))      // mouse pressed, use same format for every function
  {
    tintred = 0 ;
   tintgreen = 0 ;
   tintblue = 200 ;
   transparency = 80; 
  }
}

void returnNormal () { 
  if ((17 < mouseX) && (17+115 > mouseX) &&  //x value box
  (355-36 < mouseY)  &&   (mouseY < 355) &&  // y value box
  (mousePressed)) {
    scale1 = 1 ;
    scale2 = 1 ;
    tintred = 0 ;
    tintgreen = 0;
    tintblue = 0;
    transparency = 0;
    rotation = 0 ;
  }
}

// set the og image to float variables then set those variables in the world variables
// also label the images code for easy organization