class Decorate
{
  float y = 450;
  float y1 = 350.0;
  float y2 = 450.0;
  float speed = 0.05;
  PShape headDecorate;
  boolean start = false;
  
  Decorate()
  {
    
  }
  void decorate()
  { 
    //pushMatrix();
  //  translate(0, 0, 2);
    headDecorate = createShape();
    headDecorate.beginShape();
    headDecorate.fill(119, 136, 153);
    headDecorate.stroke(0,255,255, 2);
    headDecorate.vertex(0, 0, 2);
    headDecorate.vertex(0, y1, 2);
    headDecorate.vertex(100, y2, 2);
    headDecorate.vertex(200, y2, 2);
    headDecorate.vertex(300, y1, 2);
    headDecorate.vertex(width-300, y1, 2);
    headDecorate.vertex(width-200, y2, 2);
    headDecorate.vertex(width-100, y2, 2);
    headDecorate.vertex(width, y1, 2);
    headDecorate.vertex(width, 0, 2);
    headDecorate.endShape(CLOSE);
   // popMatrix();
  }
  void time()
  {
    textSize(50);
    fill(255);
    text(hour()+":"+minute()+":"+second(), 35, 100, 3);
  }
  void ball()
  {
    float gravity = abs(y * 0.1);
    y-=speed*gravity;
    if((y < 405 )||(y > 575 ))
    {
      speed=-speed;
    }
    fill(y/10,y/10,y/10);
    pushMatrix();
    translate(0, 0, 3);
    ellipse(970, y, 50, 50);
    popMatrix();
  }
  void ball2()
  {
    float gravity = abs(y * 0.1);
    y-=speed*gravity;
    if((y < 415 )||(y > 575 ))
    {
      speed=-speed;
    }
    fill(y/10,y/10,y/10);
    pushMatrix();
    translate(0, 0, 3);
    ellipse(30, y, 50, 50);
    popMatrix();
  }
  
  void Activate()
  { 
    pushMatrix();
    translate(0, 0, 3);
    stroke(0, 255, 255);
    strokeWeight(5);
    strokeJoin(BEVEL);
    fill(255,0,0);
    rectMode(CORNER);
    rect(width/2-40, height/2+75,80,40);
    textSize(15);
    fill(255);
    text("ACTIVATE", width/2-35, height/2+100);
    strokeWeight(1);
    popMatrix();
    ifClicked();
  }
  void ifClicked()
  {
    float tlx = width/2 - 40;
    float tly = height/2+75;
    if(mouseX > tlx && mouseX < tlx + 80 && mouseY > tly && mouseY < tly + 40)
     {
       if(mousePressed == true)
        {
        if(y1 > 70 && y2 > 170)
         {
            y1-=10;
            y2-=10;
         }
         start = true;
         decorate();
       }
    }
  }
  void render()
  {
    time();
    ball();
    ball2();
    shape(headDecorate,0,0);
    Activate();
  }
}