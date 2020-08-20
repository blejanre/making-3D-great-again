class Player {
  PVector p;
  PVector d;
  PVector c;
  float inclination;
  float azimuth;
  boolean up;
  boolean down;
  boolean forward;
  boolean backward;
  boolean strafeL;
  boolean strafeR;
  boolean lookL;
  boolean lookR;
  boolean lookUp;
  boolean lookDown;
  
  Player() {
    p = new PVector(0, 0, 0);
    d = new PVector(0, 0, 100);
    c = p.copy().add(d);
    
    up = false;
    down = false;
    forward = false;
    backward = false;
    strafeL = false;
    strafeR = false;
    lookL = false;
    lookR = false;
    lookUp = false;
    lookDown = false;
  }
 
  void update() { 
 
    pd();
    c = p.copy().add(d);
    
    camera(p.x, p.y, p.z, c.x, c.y, c.z, 0, 1, 0);  
    
  }
  
  void pd() { //updates direction and position
    
    //update direction
    if (lookL) {
      azimuth = (azimuth + 0.05) % TWO_PI;        
    }
    if (lookR) {
      azimuth = (azimuth - 0.05) % TWO_PI;
    }
    if (lookUp) {
      inclination = constrain((inclination + 0.05), 0.01, PI-0.01);
    }
    if (lookDown) {
      inclination = constrain((inclination - 0.05), 0.01, PI-0.01);
    }

    float z = sin(inclination) * cos(azimuth);
    float x = sin(inclination) * sin(azimuth);
    float y = cos(inclination);
    
    d.set(x, y, z);
    
    //update position
    if (forward) {
      p.add(d.setMag(10));
    }
    if (backward) {
      p.sub(d.setMag(10));
    }
    if (strafeR) {
      PVector dR = new PVector(d.z, 0, -d.x);
      p.sub(dR.setMag(10));
    }
    if (strafeL) {
      PVector dL = new PVector(-d.z, 0, d.x);
      p.sub(dL.setMag(10));
    }
    if (up) {
      p.add(0, -10, 0);
    }
    if (down) {
      p.add(0, 10, 0);
    }  
  }
  
}
