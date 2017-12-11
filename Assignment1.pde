//declar objects
Decorate decorate;
Steer steer;
Radar radar;
Menu menu;
Bar bar;
Star[] stars = new Star[5];
Shield shield;
void setup()
{
  size(1000,600,P3D);
  smooth();
  radar = new Radar(850, 525, 75, 0.5);
  decorate = new Decorate();
  steer = new Steer();
  menu = new Menu();
  bar = new Bar();
  shield = new Shield();
  
  stars[0] = new Star(10,20,5,"Rigel B",10000, "orbit");
  stars[1] = new Star(30,20,8,"UV Ceti A",13000, "Skylab");
  stars[2] = new Star(-10,-50,10,"Epsilon",20000,"Salyut");
  stars[3] = new Star(-30,30,12,"Gl 905",22000, "Tiangong 1");
  stars[4] = new Star(40,50,9,"Lacaille 9352",19000,"Mir");
}
void drawStar()
{
  for(int i = 0; i< stars.length; i++)
  {
    stars[i].render();
  }
}

void infoBoard()
{
  pushMatrix();
  translate(0, 0, 3);
  rectMode(CORNER);
  fill(0);
  rect(250,400, 170,200);
  popMatrix();
}

void draw()
{
  background(0);
  decorate.decorate();
  decorate.render();
  if(decorate.start == true)
  {
    stroke(0, 255, 255);
    menu.render();
    bar.render();
    steer.render();
    steer.update();
    radar.render();
    radar.update();
    infoBoard();
    drawStar();
    shield.render();
  }

}