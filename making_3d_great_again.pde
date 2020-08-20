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

void keyPressed() {
  print("called it \n ");
  if (key == ' ')            {ben.up = true;}
  else if (keyCode == SHIFT) {ben.down = true;}
  else if (key == 'w')       {ben.forward = true;}
  else if (key == 's')       {ben.backward = true;}
  else if (key == 'a')       {ben.strafeL = true;}
  else if (key == 'd')       {ben.strafeR = true;}
  else if (keyCode == LEFT)  {ben.lookL = true;}
  else if (keyCode == RIGHT) {ben.lookR = true;}
  else if (keyCode == UP)    {ben.lookUp = true;}
  else if (keyCode == DOWN)  {ben.lookDown = true;}
}
void keyReleased() {
  if (key == ' ')            {ben.up = false;}
  else if (keyCode == SHIFT) {ben.down = false;}
  else if (key == 'w')       {ben.forward = false;}
  else if (key == 's')       {ben.backward = false;}
  else if (key == 'a')       {ben.strafeL = false;}
  else if (key == 'd')       {ben.strafeR = false;}
  else if (keyCode == LEFT)  {ben.lookL = false;}
  else if (keyCode == RIGHT) {ben.lookR = false;}
  else if (keyCode == UP)    {ben.lookUp = false;}
  else if (keyCode == DOWN)  {ben.lookDown = false;}
}
