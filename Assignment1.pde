//declar objects
Decorate decorate;
Steer steer;
Radar ship_rader;
Bottom bottom;
Star[] star = new Star[100];
void setup()
{
  size(1000,600,P3D);
  smooth();
  ship_rader = new Radar(850, 525, 75, 0.5);
  decorate = new Decorate();
  steer = new Steer();
  bottom = new Bottom();
  for(int i =0; i < star.length; i ++)
  {
    star[i] = new Star(random(0, width), random(170, 320), random(8,15));
  }

}
/*
void drawstar()
{
  for(int i =0; i < star.length; i ++)
  {
    star[i].render();
  } 
}
*/
void draw()
{
  background(0);
  bottom.render();
  decorate.decorate();
  decorate.render();
  steer.render();
  steer.update();
  ship_rader.render();
  ship_rader.update();

}