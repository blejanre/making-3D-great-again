class Player {
  PVector p;
  PVector d;
  PVector c;
  float inclination;
  float azimuth;
  
  Player() {
    p = new PVector(0, 0, 0);
    d = new PVector(0, 0, 100);
    c = p.copy().add(d);
  }
 
  void update() { 
    
    d = get_coords();//new PVector(mouseX - width/2, mouseY - height/2, -(height/2) / tan(PI/6));
    c = p.copy().add(d);
    
    camera(p.x, p.y, p.z, c.x, c.y, c.z, 0, 1, 0);
    
    if (keyPressed) {
      if (key == 'w') {
        p.add(d.setMag(10));
      }
      if (key == 's') {
        p.sub(d.setMag(10));
      }
      if (key == 'd') {
        PVector dR = new PVector(d.z, 0, -d.x);
        p.sub(dR.setMag(10));
      }
      if (key == 'a') {
        PVector dL = new PVector(-d.z, 0, d.x);
        p.sub(dL.setMag(10));
      }
      if (key == ' ') {
        p.add(0, -10, 0);
      }
      if (keyCode == SHIFT) {
        p.add(0, 10, 0);
      }
    }
    
    
  }
  
  PVector get_coords() {

    if (keyPressed) {
      if (keyCode == LEFT) {
        azimuth = (azimuth + 0.05) % TWO_PI;        
      }
      if (keyCode == RIGHT) {
        azimuth = (azimuth - 0.05) % TWO_PI;
      }
      if (keyCode == UP) {
        inclination = constrain((inclination + 0.05), 0.01, PI-0.01);
      }
      if (keyCode == DOWN) {
        inclination = constrain((inclination - 0.05), 0.01, PI-0.01);
      }
    }
    float z = sin(inclination) * cos(azimuth);
    float x = sin(inclination) * sin(azimuth);
    float y = cos(inclination);
    
    PVector result = new PVector(x, y, z);
    return result;

  }
}
