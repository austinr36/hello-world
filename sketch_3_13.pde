size (580, 120) ; 
smooth();
strokeWeight (12) ;
rectMode (CENTER) ; 
strokeJoin (ROUND) ;  // this rounds the strokes corners 
rect( 75, 60, 70, 70) ;
strokeJoin (BEVEL) ; // this bevels the stroke corners 
rect (175, 60, 70, 70) ;
strokeCap (SQUARE) ; // this squares out the line endings 
line (270, 25, 340, 95) ;
strokeCap( ROUND) ; // this rounds the line endings 
line (350, 25, 420, 95) ;
ellipseMode(CORNER) ;
ellipse (480, 25, 70, 70);