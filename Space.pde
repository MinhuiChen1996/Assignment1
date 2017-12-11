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
  // when ship move star move
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
    //newStar();
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