class Player extends GameObject
{
 float speed;
 color c;
 
 Player(float x, float y)
 {
  super(x, y);
  speed = 5; 
  c = (255);
  w = 20;
  h = 50;
 }
 
 void display()
 {
   fill(255,0,0);
   stroke(1);
   ellipse(position.x + w/2, position.y - 20, 20,20);
   line(position.x + w/2, position.y, position.x+ w/2, position.y - 10);
   line(position.x, position.y + 5,position.x -10 ,position.y + 5);
   line(position.x + 10, position.y + 5,position.x + 30 ,position.y + 5);
   line(position.x, position.y + 50,position.x -10 ,position.y + 60);
   line(position.x+ 20, position.y + 50,position.x + 30 ,position.y + 60);
   noStroke();
   
   rect(position.x, position.y, w, h);
  
 }
 
  
}
