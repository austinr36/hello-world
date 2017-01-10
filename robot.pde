size ( 400, 460) ;
fill ( 0) ;
beginShape () ; // start of body, custom shape
vertex (80, 280) ;
vertex (80, 400) ;
vertex (180, 400) ;
vertex (180, 280) ;
endShape (); // end custom shape
// rectangle in body
fill (155, 151, 151) ; 
rect ( 80, 300, 100, 7 ) ;
//arc, same color as rectangle
arc (130, 400, 60, 60, 0, PI) ;
// lines, all black overcompensate to be covered by the circle
fill (0) ;
line(150, 190, 189, 120) ;
line(150, 190, 124, 160) ;
line(150, 190, 200, 205) ;
line(150, 190, 150, 280 ) ;
line ( 165, 280, 165, 200) ;
line ( 135, 280, 135, 200) ;
// circle for head
fill (0) ;
ellipse (150, 190, 63, 63) ;
// facial features 
fill ( 255,255, 255) ;
ellipse (160, 185, 15, 15) ;
fill (0) ;
ellipse (160, 185, 5, 5) ;
fill (155, 151, 151) ; 
ellipse (143, 183, 8, 8) ;
ellipse (163, 171, 6, 6) ;
ellipse (172, 190, 3, 3) ;