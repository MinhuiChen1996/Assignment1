class Star
{
  float posx;
  float posy;
  float radius;
  String name;
  float Length;
  float mag;
  boolean text = true;
  
  Star(float posx, float posy, float radius, String name, float Length, float mag)
  {
    this.posx = posx;
    this.posy = posy;
    this.radius = radius;
    this.name = name;
    this.Length = Length;
    this.mag = mag;
  }
  void click()
  {
    float d = dist(radar.cx+posx,radar.cy+posy,mouseX, mouseY);
    if (d <= radius && mousePressed)
    {
      if(text==true)
      {
        println("1");
        text=false;
      }
    }
  }
  void starInfo()
  {

  }

  void render()
  {
    pushMatrix();
    translate(radar.cx, radar.cy);
    rotate(radians(steer.theta));
    noStroke();
    fill(255, 255, 0);
    if(bar.speed > 0)
    {
      posy = posy+bar.speed/3000;
    }
    ellipse(posx, posy, radius*2, radius*2);
    noFill();
    popMatrix();
    click();
  }

}