class Steer
{
  float x = width;
  float y = height;
  float theta = 0;
  float rotSpeed = 0.8f;
  float forward = 0;
  
  Steer()
  {
    
  }
  void steering_wheel()
  {
    pushMatrix();
    translate(0, 0, 3);
    fill(0);
    stroke(0, 255, 255);
    ellipse(width/2, height/2+200, 150, 150);
    ellipse(width/2, height/2+200, 125, 125);
    popMatrix();
  }
  void handle()
  {
    pushMatrix();
    translate(width/2,height/2+200, 3);
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
    translate(width/2, height/2+195, 1);
    lights();
    stroke(0, 255, 255);
    rotateZ(radians(theta));
    rotateY(PI*frameCount/(182-bar.speed));
    sphereDetail(10);  // 
    sphere(120/2);  // size
    popMatrix();
  }
  //compass
  void direction()
  {
    pushMatrix();
    translate(width/2, 35, 3);
    fill(0);
    stroke(0, 255, 255);
    rotate(radians(theta));
    line(-15, 15, 0, -15);
    line(0 , -15,  15, 15);
    line(15, 15, 0, 0);
    line(0, 0, -15, 15);  
    popMatrix();
    pushMatrix();
    translate(0, 0, 3);
    ellipse(width/2, 35, 70, 70);
    fill(255,0,0);
    textSize(15);
    text("N", width/2-5, 10);      
    text("W", width/2-35, 40);
    text("S", width/2, 70);
    text("E", width/2+25, 40);
    popMatrix();

  }
  void render()
  {
    steering_wheel();
    Steer_ball();
    handle();
    direction();
  }
}