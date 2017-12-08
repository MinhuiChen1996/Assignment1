class Decorate
{
  PShape beside;
  
  Decorate()
  {
  };
  
  void decorate()
  {
    beside = createShape();
    beside.beginShape();
    beside.stroke(0,255,255);
    beside.fill(0,255,255,1);
    beside.vertex(0, 60);
    beside.vertex(90, 50);
    beside.vertex(110, 25);
    beside.vertex(77, 0);
    beside.vertex(0, 0);
    beside.endShape(CLOSE);
  }
  void top_mid()
  {
    //quad(220, 0, 300, 100, 400, 100, 400, 0); // outside top-mid quad
    //quad(250, 0, 300, 70, 400, 70, 400, 0);
    line(220, 0, 300, 100);
    line(300, 100, 400, 100);
    line(250, 0, 300, 70);
    line(300, 70, 400, 70);
  }
  void render()
  {
    top_mid();
    decorate();
    shape(beside, 0, 0);
    stroke(0,255,255);
    pushMatrix();  // mirroring shapes through by raotetY
    fill(0,255,255,1);
    translate(800, 0);
    rotateY(PI);
    shape(beside, 0, 0);
    top_mid();
    popMatrix();
  }
  
}