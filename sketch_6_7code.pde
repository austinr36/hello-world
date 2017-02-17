PFont font ;
PFont font2 ;


void setup() {
  size (600, 120) ;
  background (255,255,255) ;
  smooth() ;
  font = loadFont ("Dialog-48.vlw") ;
  font2 = loadFont ("AlBayan-48.vlw") ;
}

void draw() {
  fill (0) ;
  textFont (font) ;
  text ("Austin Rath" , 30, 60) ;
  fill (120, 210, 60) ;
  textFont (font2) ;
  text ("Austin Rath" , 300, 60) ;
}