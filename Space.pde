class Space
{
  float posx;
  float posy;
  float size;

  Space(float posx, float posy, float size)
  {
    this.posx = posx;
    this.posy = posy;
    this.size = size;
  }
  void move()
  {
    if(keyPressed)
    {
      if(key==('a'))
      {
        posx+= 1+bar.speed/30;
      }
      if(key==('d'))
      {
        posx-= 1+bar.speed/30;
      }
    }
  }
  void newStars()
  {
    for(int i = 0; i< 30; i++)
    {
      ellipse(random(0,width*2), random(0, height), random(1,4), random(1,4));
    }
  }
  void forward()
  {
    if(posx<width/2 && posy <height/2)
    {
      posx-=bar.speed/60;
      posy-=bar.speed/60;
    }
    if(posx<width/2 && posy > height/2)
    {
      posx-=bar.speed/60;
      posy+=bar.speed/60;
    }
    if(posx>width/2 && posy <height/2)
    {
      posx+=bar.speed/60;
      posy-=bar.speed/60;
    }
    if(posx>width/2 && posy >height/2)
    {
      posx+=bar.speed/60;
      posy+=bar.speed/60;
    }
  }

  void update()
  {
    move();
    forward();
  }
  
  void render()
  {
    pushMatrix();
    translate(0, 0, 0);
    noStroke();
    noFill();
    fill(255);
    ellipse(posx, posy, size,size);
    popMatrix();
  }

  
  
}