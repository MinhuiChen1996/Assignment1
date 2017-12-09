class Star
{
  float posx;
  float posy;
  float radius;
  
  Star(float posx, float posy, float radius)
  {
    this.posx = posx;
    this.posy = posy;
    //this.startNo = startNo;
    this.radius = radius;
  }
  
  void render()
  {
    pushMatrix();
    translate(posx, posy);
    fill(255, 97, 0);
    ellipse(0,0,radius,radius);
    popMatrix();
  }
}