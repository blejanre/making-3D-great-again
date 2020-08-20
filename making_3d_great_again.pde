Player ben;

void setup() {
  size(1440, 800, P3D);
  ben = new Player();
}


void draw() {

  ben.update();

  background(200);
  
  //BOXES
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

void keyPressed() {
  if (key == ' ')       {ben.up = true;}
  if (keyCode == SHIFT) {ben.down = true;}
  if (key == 'w')       {ben.forward = true;}
  if (key == 's')       {ben.backward = true;}
  if (key == 'a')       {ben.strafeL = true;}
  if (key == 'd')       {ben.strafeR = true;}
  if (keyCode == LEFT)  {ben.lookL = true;}
  if (keyCode == RIGHT) {ben.lookR = true;}
  if (keyCode == UP)    {ben.lookUp = true;}
  if (keyCode == DOWN)  {ben.lookDown = true;}
}
void keyReleased() {
  if (key == ' ')       {ben.up = false;}
  if (keyCode == SHIFT) {ben.down = false;}
  if (key == 'w')       {ben.forward = false;}
  if (key == 's')       {ben.backward = false;}
  if (key == 'a')       {ben.strafeL = false;}
  if (key == 'd')       {ben.strafeR = false;}
  if (keyCode == LEFT)  {ben.lookL = false;}
  if (keyCode == RIGHT) {ben.lookR = false;}
  if (keyCode == UP)    {ben.lookUp = false;}
  if (keyCode == DOWN)  {ben.lookDown = false;}
}
