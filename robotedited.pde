

void setup() {
size ( 400, 460) ;
smooth() ;
}

void draw() {
  float hrec = mouseY +90 ;
float hcirc = mouseY ;
float lengthr = 120 ;
background (204) ;
fill ( 0) ;
//body rectangle
fill (0) ;
rect (80, hrec, 100, lengthr) ; 
// rectangle in body
fill (155, 151, 151) ; 
rect ( 80, hrec + 20, 100, 7 ) ;
//arc, same color as rectangle
arc (130, lengthr + hrec, 60, 60, 0, PI) ;
// lines, all black overcompensate to be covered by the circle
fill (0) ;
line(150, hcirc, 189, hcirc -70) ;
line(150, hcirc, 124, hcirc - 30) ;
line(150, hcirc, 200, hcirc + 25) ;
line(150, hcirc, 150, hrec ) ;
line ( 165, hrec, 165, hcirc) ;
line ( 135, hrec, 135, hcirc) ;
// circle for head
fill (0) ;
ellipse (150, hcirc, 63, 63) ;
// facial features 
fill ( 255,255, 255) ;
ellipse (160, hcirc -5, 15, 15) ;
fill (0) ;
ellipse (160, hcirc -5, 5, 5) ;
fill (155, 151, 151) ; 
ellipse (143, hcirc -7, 8, 8) ;
ellipse (163, hcirc -19, 6, 6) ;
ellipse (172, hcirc, 3, 3) ;
}