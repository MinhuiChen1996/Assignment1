class Bar
{
  float fuel = 180;
  float speed = 0;
  Bar()
  {
    
  }
  
  void fuelbar()
  {
    pushMatrix();
    translate(0, 0, 3);
    rectMode(CORNER);
    fill(0);
    rect(width/2+85, height/2+175, 180, 40);
    fill(0,255,0);
    noStroke();
    //quad(width/2, height/2+175, width/2+175+fuel,height/2+175, width/2+175+fuel, height/2+225, width/2+175, height/2+175+50);
    rect(width/2+85, height/2+175, fuel, 40);
    textSize(25);
    text("Fuel: "+int(fuel), width/2+85, height/2+170);
    noFill();
    popMatrix();
  }
  
  void speeedbar()
  {
    pushMatrix();
    translate(0, 0, 3);
    rectMode(CORNER);
    stroke(1);
    fill(0);
    rect(width/2+85, height/2+250, 180, 40);
    fill(0, 255, 255);
    noStroke();
    //quad(width/2, height/2+250, width/2+175+speed,height/2+250, width/2+175+speed, height/2+300, width/2+175, height/2+300);
    rect(width/2+85, height/2+250, speed, 40);
    textSize(25);
    text("Speed: "+int(speed), width/2+85, height/2+245);
    noFill();
    popMatrix();
  }
  
  void speed()
  {
    if(keyPressed)
    {
      if(key == 'w' && speed < 180)
      {
        speed ++;
      }
      else if(key == 's' && speed > 0)
      {
        speed --;
      }
    }
  }
  
  void fuel()
  {
    if(frameCount % 60 ==0)
    {

      if(fuel > 0 )
      {
        if((fuel -= speed/150) < 0)
        {
          fuel = 0;
        }  
        fuel = fuel - speed/150;
      }
    }
  }
  void noFuel()
  {
    if(fuel <= 0)
    {
      speed = 0;
    }
  }
  
  void render()
  {
    speed();
    fuel();
    fuelbar();
    speeedbar();
    noFuel();
  }
  
}