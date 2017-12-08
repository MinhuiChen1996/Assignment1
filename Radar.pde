class Radar
{
  float cx, cy; //radar center x, y;
  float radius;
  float theta;
  float frequency;
  float speed;
  
  Radar(float cx, float cy, float radius, float frequency)
  {
    this.cx = cx;
    this.cy = cy;
    this.radius = radius;
    this.frequency =frequency;
    this.speed = (TWO_PI / 60.0) * frequency;
  }
  
  void update()
  {
    theta += speed;
  }
  
  void render()
  {
    stroke(0, 255, 255);
    noFill();
    ellipse(cx, cy, radius * 2, radius * 2); //radar outside cycle
    int raderline = 10;  // how many rader line use to scan
    
    float linecolor = 255 / (float)raderline; 
    for(int i = 0 ; i < raderline ; i ++)
    {
      stroke(0, i * linecolor, 255); // let radar line color change to light
      float x = cx + sin(theta + i * speed) * radius;
      float y = cy -cos(theta + i * speed) * radius;
      line(cx, cy, x, y);
    }
  }
}