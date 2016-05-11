void setup()
{
  size(500, 600);
  // add player at bottom left
  player = new Player(width * 0.25f, height * 0.85f);
  // for loop for 5 clouds
  for (int i = 0; i < 5; i ++)
  {
    float dir = (i > 5) ? HALF_PI : HALF_PI + PI; 
    float start = (i < 5) ?  width : 0;
    clouds.add(new Clouds(0, i + random(50, 125), dir, start));
  }
}
Player player;

ArrayList<Clouds> clouds = new ArrayList<Clouds>();
ArrayList<Clouds> clouds = new ArrayList<Clouds>();
int cloudPath = height * 25;

void draw()
{
  background(0, 80, 200);
  //grass
  fill(0, 200, 0);
  rect(0, height - 150, 500, 300);
  stroke(255);

  ds.size())
  {
    clouds.get(i).update();
    clouds.get(i).display();
    i++;
  }
  player.display();
  //player.move();
}

boolean[] keys = new boolean[1337]; // :D 

void keyPressed()
{
  keys[keyCode] = true;
}
void keyReleased()
{
  keys[keyCode] = false;
}

