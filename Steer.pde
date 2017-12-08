class Steer
{
PShape beside;
PShape SWheel; // steer wheel
float x = width;
float y = height;
float theta = 0;
float rotSpeed = 0.8f;

Steer()
{
  
};

void decorate()
{
  beside = createShape();
  beside.beginShape();
  beside.stroke(0,255,255);
  beside.fill(0,255,255,1);
  beside.vertex(0, 60);
  beside.vertex(90, 50);
  beside.vertex(110, 25);
  beside.vertex(77, 0);
  beside.vertex(0, 0);
  beside.endShape(CLOSE);
}

void top_mid()
{
  quad(220, 0, 300, 100, 400, 100, 400, 0); // outside top-mid quad
  quad(250, 0, 300, 70, 400, 70, 400, 0);
}
void steering_wheel()
{
  noFill();
  ellipse(width/2, height/2, 150, 150);
  ellipse(width/2, height/2, 125, 125);
}
void steerArc()
{
  pushMatrix();
  translate(400,225);
  rotate(radians(theta));
  stroke(255, 255, 0);
  strokeWeight(10);
  noFill();
  arc(0, 0, 140, 140, HALF_PI+QUARTER_PI, PI+QUARTER_PI);
  arc(0, 0, 140, 140, TWO_PI- QUARTER_PI, TWO_PI+QUARTER_PI);
  strokeWeight(1);
  popMatrix();
}
void update()
{
  if(keyPressed)
  {
    if (key==('a'))
    {
      theta -= rotSpeed;
    }
    if (key==('d'))
    {
      theta += rotSpeed;
    }
  }
}
void Steer_ball()
{
  pushMatrix();
  translate(width/2, height/2);
  rotateY(radians(theta));
  sphereDetail(20);
  sphere(125/2);
  popMatrix();
}
void render()
{
  line(0,225,800,225);
  line(400,0,400,450);
  fill(0,255,255,1);
  stroke(0,255,255);
  top_mid();
  steering_wheel();
  Steer_ball();
  steerArc();
  decorate();
  shape(beside, 0, 0);
  stroke(0,255,255);
  pushMatrix();  // mirroring shapes through by raotetY
  fill(0,255,255,1);
  translate(800, 0);
  rotateY(PI);
  shape(beside, 0, 0);
  top_mid();
  popMatrix();
}
}