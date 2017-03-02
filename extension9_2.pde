JitterBug bug ;
JitterBug jit ;

void setup () {
  size (480, 120) ;
  smooth () ;
  //create object and pass in parameters
  bug = new JitterBug (width * 0.66 , height /2, 20) ;
  jit = new JitterBug (width / 3, height /2, 50) ;
  
}

void draw () {
  bug.movement() ;
  bug.display () ;
  jit.movement () ;
  jit.display () ;
}