class Menu
{
  PShape controlpanel;
  
  Menu()
  { 
  }
  // p Shape
  void table()
  {
    controlpanel = createShape();
    controlpanel.beginShape();
    controlpanel.fill(119, 136, 153);
    controlpanel.stroke(0,255,255);
    controlpanel.vertex(0,height,2);
    controlpanel.vertex(0,350,2);
    controlpanel.vertex(100,450,2);
    controlpanel.vertex(200,450,2);
    controlpanel.vertex(300,350,2);
    controlpanel.vertex(width-300,350,2);
    controlpanel.vertex(width-200,450,2);
    controlpanel.vertex(width-100,450,2);
    controlpanel.vertex(width,350,2);
    controlpanel.vertex(width,height,2);
    controlpanel.endShape(CLOSE);
  }
  
  void render()
  {
    table();
    decorate.fan();
    shape(controlpanel, 0, 0);
  }
}