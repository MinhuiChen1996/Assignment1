//declar objects
Decorate decorate;
Steer steer;
Radar radar;
Menu menu;
Bar bar;
Planet[] planets = new Planet[5];
Shield shield;
//Space[] stars = new Space[1600];
int starNo;
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
  
  planets[0] = new Planet(10,20,5,"Rigel B",10000, "orbit");
  planets[1] = new Planet(30,20,8,"UV Ceti A",13000, "Skylab");
  planets[2] = new Planet(-10,-50,10,"Epsilon",20000,"Salyut");
  planets[3] = new Planet(-30,30,12,"Gl 905",22000, "Tiangong 1");
  planets[4] = new Planet(40,50,9,"Lacaille 9352",19000,"Mir");
  
  for(int i = 0; i< 500; i++)
  {
    Space star = new Space(random(0,width*2), random(0, height), random(1,4));
    stars.add(star);
  }
  
}
ArrayList<Space> stars = new ArrayList<Space>();
void drawStar()
{
  for(Space s:stars)
  {
    s.update();
    s.render();
  }
}

/*
void newStar()
{
  for(int i = 0; i< stars.length; i++)
  {
    starNo+=1;
    
    //if((stars[i].posx > width/2-50 && stars[i].posy >height/2 -50)||(stars[i].posx > width/2-50 && stars[i].posy < height/2 +50) 
    //||(stars[i].posx < width/2+50 && stars[i].posy >height/2 -50)||(stars[i].posx < width/2+50 && stars[i].posy <height/2 +50))
    //{
      
     // if(starNo < 50)
      //{
     //   for(int x=0; x <=50; x ++)
      //  {
     //     stars[i] = new Space(random(0,width*2), random(0, height), random(1,4));
     //   }
    //  }
    //}
  }
}
*/
void drawPlanet()
{
  for(int i = 0; i< planets.length; i++)
  {
    planets[i].render();
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
  drawStar();
  decorate.decorate();
  decorate.render();
  if(decorate.start == true)
  {
    stroke(0, 255, 255);
    menu.render();
    bar.render();
    steer.update();
    steer.render();
    radar.render();
    radar.update();
    infoBoard();
    drawPlanet();
    shield.render();
  }

}