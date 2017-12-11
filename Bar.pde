/* 
i create 4 bar to display Fuel, speed, O2 and CO2 information
if fuel or O2 not enought will have warning
*/
class Bar
{
  float fuel = 180;
  float speed = 0;
  float O2 = 120;
  float CO2;
  Bar()
  {
    
  }
  //draw 4 bars
  void fuelbar()
  {
    pushMatrix();
    translate(0, 0, 3);
    rectMode(CORNER);
    fill(0);
    stroke(0,255,0);
    rect(width/2+85, height/2+175, 180, 40);
    fill(0,255,0);
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
    stroke(0, 255, 255);
    fill(0);
    rect(width/2+85, height/2+250, 180, 40);
    fill(0, 255, 255);
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
   stroke(0,255,255);
   rect(100,height-120,40,120);
   fill(0,255,255);
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
   stroke(255, 0, 0);
   rect(160,height-120,40,120); 
   fill(255, 0, 0);
   rect(160,height-CO2,40,120);
   textSize(20);
   text("CO2", 160, height -122);
   popMatrix();
  }
  // calculate O2 and CO2
  void update()
  {
    if(frameCount % 60 == 0 && O2 > 0)
    {
      O2-=2.5;
    }
    if(frameCount % 60 == 0 && CO2 < 120)
    {
      CO2+=2.5;
    }
  }
  //Calculate speed
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
  //calculate fuel
  void fuel()
  {
    if(frameCount % 60 ==0)
    {

      if(fuel > 0 )
      {
        fuel = fuel - speed/70;
        if(fuel < 0)
        {
          fuel = 0;
        }  
      }
    }
  }
  // warning message
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
  // no fuel no speed
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