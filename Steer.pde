class Steer
{
  float x = width;
  float y = height;
  float theta = 0;
  float rotSpeed = 0.8f;
  
  Steer()
  {
    
  }
  void steering_wheel()
  {
    noFill();
    ellipse(width/2, height/2+120, 150, 150);
    ellipse(width/2, height/2+120, 125, 125);
  }
  void steerArc()
  {
    pushMatrix();
    translate(width/2,height/2+120);
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
    translate(width/2, height/2+115);
    rotateY(radians(theta));
    sphereDetail(10);  // 
    sphere(120/2);  // size
    popMatrix();
  }
  void direction()
  {
    stroke(0, 255, 255);
    ellipse(400, 35, 70, 70);
    pushMatrix();
    translate(width/2, 35);
    rotate(radians(theta));
    line(-15, 15, 0, -15);
    line(0 , -15,  15, 15);
    line(15, 15, 0, 0);
    line(0, 0, -15, 15);  
    popMatrix();
    fill(255,0,0);
    text("N", 395, 10);      //line(400,0, 400,35);
    text("W", 365, 40);     //line(365, 35, 400, 35);
    text("S", 400, 70);     //line(400, 70, 400, 35);
    text("E", 425, 40);     //line(435, 35, 400, 35);

  }
  void render()
  {
    //line(0,225,800,225);
    //line(400,0,400,450);
    fill(0,255,255,1);
    stroke(0,255,255);
    steering_wheel();
    Steer_ball();
    steerArc();
    direction();
  }
}