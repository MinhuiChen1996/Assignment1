class Shield
{
  Shield()
  {
    
  }
  
  void button()
  {
    pushMatrix();
    translate(0, 0, 3);
    stroke(0, 255, 0);
    strokeWeight(5);
    strokeJoin(BEVEL);
    fill(0,255,255);
    rectMode(CORNER);
    rect(width/2+120, height/2+75,80,40);
    textSize(15);
    fill(0);
    text("SHIELD", width/2+130, height/2+100);
    strokeWeight(1);
    popMatrix();
    ifClicked();
  }
  // draw shield
  void shieldBall()
  {
    pushMatrix();
    translate(width/2, height/2, 1);
    rotateY(PI*frameCount/125);
    fill(0, 255, 255,0);
    stroke(255);
    sphereDetail(20);
    sphere(600);
    popMatrix();
  }
  void ifClicked()
  {
    float tlx = width/2+120;
    float tly = height/2+75;
    if(mouseX > tlx && mouseX < tlx + 80 && mouseY > tly && mouseY < tly + 40 && mousePressed == true)
    {
      shieldBall();
    }
  }
  
  void render()
  {
    button();
  }
}