// class
class Clouds extends GameObject
{
  PVector forward;
  float speed;
  float theta;
  float start;
  color c;
Clouds(float x, float y, float t, float s)
  {
    super(x, y);
    forward = new PVector(1, 0);
    theta = t;
    start = s;
    initialize();
  }
  void initialize()
  {
    w = 25;
    halfW = w/2;

    h = 25;
    halfH = h/2;

    speed = random(0.5f, 2.0f);

    position.x = start;

    c = color(random(127,255));
  }
  void update()
  {
    forward.x = sin(theta);
    forward.y = -cos(theta);

    forward.mult(speed);
    position.add(forward);

    if (position.x <= -25)
    {
      initialize();
    }
  }

  void display()
  {
    pushMatrix();
    translate(position.x, position.y);
    rotate(theta);
    drawClouds();
    popMatrix();
  }

  void drawClouds()
  {
    fill(c);
    noStroke();
    ellipse(0, 0, w, h);
    ellipse(0,-10, w -5, h);
    ellipse(0,10, w -5, h);
  }
}

