class Bottom
{
  PShape controlpanel;
  
  Bottom()
  { 
  }
  
  void table()
  {
    controlpanel = createShape();
    controlpanel.beginShape();
    controlpanel.stroke(0,255,255);
    controlpanel.vertex(0,height);
    controlpanel.vertex(0,200);
    controlpanel.vertex(100,300);
    controlpanel.vertex(200,300);
    controlpanel.vertex(300,200);
    controlpanel.vertex(width-300,200);
    controlpanel.vertex(width-200,300);
    controlpanel.vertex(width-100,300);
    controlpanel.vertex(width,200);
    controlpanel.vertex(width,height);
    controlpanel.endShape(CLOSE);
  }
  
  void render()
  {
    table();
    shape(controlpanel, 0, 0);
  }
}