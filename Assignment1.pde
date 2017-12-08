void setup()
{
  size(800,450,P3D);
  smooth();
  ship_rader = new Radar(100, 400, 50, 0.5);
  
  steer = new Steer();
}
D
Steer steer;
Radar ship_rader;
void draw()
{
  background(0);
  steer.render();
  steer.update();
  ship_rader.render();
  ship_rader.update();

}