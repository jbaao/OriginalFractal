public void setup()
{
 size(500,500);
 background(182,197,184);
}
public void draw()
{
  fractal(100,400,300);
}
public void fractal(float x, float y, float len)
{
  if(len<=7){
    fill(((int)(Math.random()*100)+150),((int)(Math.random()*50)+150),((int)(Math.random()*100)+150));
    ellipse(x,y,x+len,y-len);
  } else{
    fractal(x,y,len/2);
    fractal(x+len/2,y,len/2);
    fractal(x+len/4,y-len/4,len/2);
  }
}
