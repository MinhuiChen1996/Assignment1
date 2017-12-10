class Decorate
{
  float y = 450;
  float y1 = 350.0;
  float y2 = 450.0;
  float speed = 0.05;
  PShape headDecorate;
  
  Decorate()
  {
    
  }
  void decorate()
  {  
    headDecorate = createShape();
    headDecorate.beginShape();
    headDecorate.fill(119, 136, 153);
    headDecorate.stroke(0,255,255);
    headDecorate.vertex(0, 0);
    headDecorate.vertex(0, y1);
    headDecorate.vertex(100, y2);
    headDecorate.vertex(200, y2);
    headDecorate.vertex(300, y1);
    headDecorate.vertex(width-300, y1);
    headDecorate.vertex(width-200, y2);
    headDecorate.vertex(width-100, y2);
    headDecorate.vertex(width, y1);
    headDecorate.vertex(width, 0);
    headDecorate.endShape(CLOSE);
  }
  void time()
  {
    textSize(50);
    fill(255);
    text(hour()+":"+minute()+":"+second(), 35, 100);
  }
  void ball()
  {
    
    float gravity = abs(y * 0.1);
    y-=speed*gravity;
    if((y < 405 )||(y > 575 ))
    {
      speed=-speed;
    }
    fill(255);
    ellipse(975, y, 50, 50);
  }
  
  void Activate()
  { 
    stroke(0, 255, 255);
    rectMode(CENTER);
    rect(825,-height-170/2, 50, 170);
    strokeWeight(5);
    strokeJoin(BEVEL);
    fill(255,0,0);
    rect(width/2, height/2+90,80,50);
    textSize(15);
    fill(255);
    text("ACTIVATE", width/2-35, height/2+95);
    strokeWeight(1);
  }
  void mousePressed()
  {
    float tlx = width/2 - 40;
    float tly = height/2+90 - 25;
    if(mouseX > tlx && mouseX < tlx + 80 && mouseY > tly && mouseY < tly + 50)
     {
       if(mousePressed)
        {
        if(y1 > 70 && y2 > 170)
         {
            y1-=10;
            y2-=10;
         }
         decorate();
       }
    }
  }
  void render()
  {
    time();
    ball();
    mousePressed();
    shape(headDecorate,0,0);
    Activate();
  }
}