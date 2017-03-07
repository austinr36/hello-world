JitterBug bug ;
JitterBug jit ;
Beetle triangle ;

void setup () {
  size (480, 120) ;
  smooth () ;
  //create object and pass in parameters
  bug = new JitterBug (width * 0.5 , height /2, 20) ;
  jit = new JitterBug (width * 0.66, height /2, 50) ;
  triangle = new Beetle (100, 70, 120, 70, 100, 90) ;
  triangle.setSize (2) ;
   bug.setSize (2) ;
}

void draw () {
  triangle.setcolor (25, 240, 137) ;
  
  bug.movement() ;
  bug.display () ;
  jit.movement () ;
  jit.display () ;
  
  triangle.movement () ;
  triangle.display () ;
}