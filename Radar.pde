class Radar
{
  float cx, cy; //radar center x, y;
  float radius;
  float theta;
  float frequency;
  float speed;
  float s = second();
  float radarSize;
  float radarSize2;
  Radar(float cx, float cy, float radius, float frequency)
  {
    this.cx = cx;
    this.cy = cy;
    this.radius = radius;
    this.frequency =frequency;
    this.speed = (TWO_PI / 60.0) * frequency;
  }

  void radarcenter()
  {
    pushMatrix();
    translate(cx, cy, 3);
    line(-15, 15, 0, -15);
    line(0, -15, 15, 15);
    line(15, 15, 0, 0);
    line(0, 0, -15, 15);
    popMatrix();
  }
  void update()
  {
    theta += speed;
  }

  void render()
  {
    pushMatrix();
    translate(0, 0, 3);
    stroke(0, 255, 255);
    line(850,height-150, 850, height);
    line(850-75, height - 75, 850+75, height-75);
    fill(0);
    ellipse(cx, cy, radius * 2, radius * 2); //radar outside cycle
    int raderline = 5;  // how many rader line use to scan

    float linecolor = 255 / (float)raderline; 
    for (int i = 0; i < raderline; i ++)
    {
      stroke(0, i * linecolor, 255); // let radar line color change to light
      float x = cx + sin(theta + i * speed) * radius;
      float y = cy -cos(theta + i * speed) * radius;
      line(cx, cy, x, y);
    }
    radarcenter();
    if (frameCount % 60==0);
    {
      ellipse(cx, cy, radarSize, radarSize);
      if (radarSize < radius * 2)
      {
        radarSize+=2;
      }
      if (radarSize == radius * 2)
      {
          radarSize = 0;
      }
      ellipse(cx, cy, radarSize2, radarSize2);
      if (radarSize2 < radius * 2)
      {
        radarSize2++;
      }
      if (radarSize2 == radius * 2)
      {
          radarSize2 = 0;
      }
    }
    popMatrix();
  }
}