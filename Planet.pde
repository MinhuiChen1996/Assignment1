class Planet
{
  float posx;
  float posy;
  float radius;
  String starname;
  float Length;
  float mag;
  boolean text = true;
  String spaceStation;
  
  Planet(float posx, float posy, float radius, String starname, float Length,String spaceStation)
  {
    this.posx = posx;
    this.posy = posy;
    this.radius = radius;
    this.starname = starname;
    this.Length = Length;
    this.spaceStation= spaceStation;
  }
  // if click planet display planetinfo
  void click()
  {
    float d = dist(radar.cx+posx,radar.cy+posy,mouseX, mouseY);
    if (d <= radius && mousePressed)
    {
      if(text==true)
      {
        planetInfo();
        //text=false;
      }
    }
  }
  // planet details
  void planetInfo()
  {
    pushMatrix();
    translate(0, 0, 3);
    float dist = dist(radar.cx,radar.cy, posx,posy);
    textSize(15);
    fill(0, 255, 0);
    text("PlanetName: ", 252,425);
    text(starname, 252, 440);
    text("Length: ", 252,475);
    text(Length + "M", 252, 490);
    text("Distance: ", 252, 525);
    text(dist +" KM",252,540);
    text("SpaceStation: ", 252, 575);
    text(spaceStation, 252, 595);
    popMatrix();
  }
  
  //draw
  void render()
  {
    pushMatrix();
    translate(radar.cx, radar.cy, 3);
    rotate(radians(steer.theta));
    noStroke();
    fill(255, 255, 0);
    if(bar.speed > 0)
    {
      posy = posy+bar.speed/5000;
    }
    ellipse(posx, posy, radius*2, radius*2);
    noFill();
    popMatrix();
    click();
  }

}