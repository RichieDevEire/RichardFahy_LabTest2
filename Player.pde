Class Player extends GameObject
{
 float speed;
 color c;
 
 Player(float x, float y)
 {
  super(x, y);
  speed = 5; 
  c = (255,0,0);
  w = 20;
  h = 50
 }
 
 vois display()
 {
   fill(255,0,0);
   rect(position.x, position.y w, h);
 }
 
  
}
