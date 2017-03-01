JitterBug bug ;
JitterBug jit ;
void setup () {
  size (480, 120) ;
  smooth () ;
  //create object and pass in parameters
  bug = new JitterBug (width / 2 * 3, height /2, 20) ;
  jit = new JitterBug (width / 3, height /2, 50) ;
  
}

void draw () {
  bug.movement() ;
  bug.display () ;
  jit.movement () ;
  jit.movement () ;
}













class JitterBug {
  float x;
  float y;
  int diameter;
  float speed = 2.5;
  
  JitterBug (float tempX, float tempY, int tempDiameter) {
    x = tempX ;
    y= tempY ;
    diameter = tempDiameter ;
    
  }
  
  void movement () {
    x+= random (-speed, speed) ;
    y += random (-speed, speed) ;
  }
  
  void display () {
    ellipse (x, y, diameter, diameter) ;
  }
  
}