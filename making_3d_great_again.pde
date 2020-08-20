Player ben;

void setup() {
  size(1440, 800, P3D);
  ben = new Player();
}


void draw() {
  //print(ben.get_coords(), "\n");


  ben.update();

  
  background(200);
  push();
  translate(0, 0, -500);
  stroke(255);
  noFill();
  box(200);
  pop();
  push();
  translate(0, 0, 500);
  box(200);
  pop();
  push();
  translate(-500, 0, 0);
  box(200);
  pop();
  push();  
  translate(500, 0, 0);
  box(200);
  pop();
  push();  
  translate(0, -500, 0);
  box(200);
  pop();
  translate(0, 500, 0);
  box(200);

}
