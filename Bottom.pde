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
    controlpanel.fill(119, 136, 153);
    //controlpanel.stroke(0,255,255);
    controlpanel.vertex(0,height);
    controlpanel.vertex(0,350);
    controlpanel.vertex(100,450);
    controlpanel.vertex(200,450);
    controlpanel.vertex(300,350);
    controlpanel.vertex(width-300,350);
    controlpanel.vertex(width-200,450);
    controlpanel.vertex(width-100,450);
    controlpanel.vertex(width,350);
    controlpanel.vertex(width,height);
    controlpanel.endShape(CLOSE);
  }
  
  void render()
  {
    table();
    shape(controlpanel, 0, 0);
  }
}