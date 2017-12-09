void setup()
{
  size(1000,600,P3D);
  smooth();
  ship_rader = new Radar(850, 525, 75, 0.5);
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
  fill(255);
  bottom.render();
  decorate.render();
  steer.render();
  steer.update();
  ship_rader.render();
  ship_rader.update();

}