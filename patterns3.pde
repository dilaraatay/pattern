int x = 0;
 
int y = 0;
 
int t = 0; //color transparency
 
void setup()
{
  size(600,300);
  background(#A21A4A);
  smooth();
}
 
void draw()
{
  strokeWeight(0.25);
  stroke(0,#A21A4A,0);
  
  for(int i=0; i<10; i++)
  {
    fill(0,#A21A4A,0,t);
    t = t+10;
    for(int j=0; j<10; j++)
    {
      beginShape(QUAD_STRIP); 
      vertex(x, y); 
      vertex(x, y+40);
      vertex(x+30, y+40);
      vertex(x+30, y);
      endShape();
      y += 40;
    }
    y = 0;
    x += 30;
  }
}