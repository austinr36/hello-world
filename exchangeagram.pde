PImage eng ;
PFont text ;

void setup () {
  size (600, 400) ;
  smooth () ;
  background (0) ;
  images (); 
}

void draw () {
 image (eng, 200, 0, 400, 400) ;
} 




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
  text ("Scale" , 20 , 250) ;
  noFill () ;
  stroke (255) ;
  rect (17, 55, 60, -36) ;
  rect (17, 105, 90, -36) ;
  rect (17, 155, 80, -36) ;
  rect (17, 205, 100, -36) ;
  rect (17, 255, 90, -36) ;
}
