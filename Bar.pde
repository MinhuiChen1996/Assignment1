class Bar
{
  float fuel = 180;
  float speed = 0;
  float O2 = 120;
  float CO2;
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
  void O2()
  {
   pushMatrix();
   translate(0,0,3);
   fill(0);
   rect(100,height-120,40,120);
   fill(0,255,255);
   //float O2 = map(x, 0, 120, 0, 180);
   rect(100,height-O2,40,120);
   textSize(20);
   text("O2", 100, height -122);
   popMatrix();
  }
  
  void CO2()
  {
   pushMatrix();
   translate(0,0,3);
   fill(0);
   rect(160,height-120,40,120); 
   fill(255, 0, 0);
   //float CO2 = map(y, 0, 120, 0, 180);
   rect(160,height-CO2,40,120);
   textSize(20);
   text("CO2", 160, height -122);
   popMatrix();
  }
  void update()
  {
    if(frameCount % 60 == 0 && O2 > 0)
    {
      O2--;
    }
    if(frameCount % 60 == 0 && CO2 < 120)
    {
      CO2++;
    }
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
        fuel = fuel - speed/100;
        if(fuel < 0)
        {
          fuel = 0;
        }  
      }
    }
  }
  
  void warning()
  {
    if(fuel == 0)
    {
      textSize(30);
      fill(255,0,0);
      text("Warning!!! NOT ENOUGH FUEL", width/2-200, height/2-100);
    }
    if(CO2 == 120)
    {
      textSize(30);
      fill(255,0,0);
      text("Warning!!! NEED FRESH O2", width/2-200, height/2-50);
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
    warning();
    fuel();
    O2();
    CO2();
    update();
    fuelbar();
    speeedbar();
    noFuel();
  }
  
}