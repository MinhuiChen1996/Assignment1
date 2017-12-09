class Decorate
{
  float y1 = 350.0;
  float y2 = 450.0;
  
  PShape headDecorate;
  
  Decorate()
  {
    
  }
  void decorate()
  {  
    headDecorate = createShape();
    headDecorate.beginShape();
    headDecorate.fill(119, 136, 153);
    //headDecorate.stroke(0,255,255);
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
    text(hour()+":"+minute()+":"+second(),100,30);
  }
  void Activate()
  {
    rectMode(CENTER);
    strokeWeight(5);
    strokeJoin(BEVEL);
    fill(255,0,0);
    rect(width/2, height/2+90,80,50);
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
    mousePressed();
    shape(headDecorate,0,0);
    Activate();
  }
}