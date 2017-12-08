void setup()
{
  size(800,450,P3D);
  smooth();
  ship_rader = new Radar(100, 400, 50, 0.5);
  decorate = new Decorate();
  steer = new Steer();
  bottom = new Bottom();
}
Decorate decorate;
Steer steer;
Radar ship_rader;
Bottom bottom;
void draw()
{
  background(0);
  decorate.render();
  steer.render();
  steer.update();
  ship_rader.render();
  ship_rader.update();
  bottom.render();
}