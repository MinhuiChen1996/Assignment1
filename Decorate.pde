class Decorate
{
  float y1;
  float y2;

  
  PShape headDecorate;
  
  Decorate()
  {
    
  }
  void decorate()
  {  
    y1 = 350;
    y2 = 450;
    headDecorate = createShape();
    headDecorate.beginShape();
    headDecorate.fill(255, 97, 0);
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
  
  void Activate()
  {
    rectMode(CENTER);
    fill(0,255,255);
    strokeJoin(BEVEL);
    rect(width/2, height/2+80,80,50);
  }
  
  void render()
  {
    decorate();
    shape(headDecorate,0,0);
    Activate();
  }
}