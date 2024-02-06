public void setup()
{

}
public void draw()
{
sierpinski(100,100,100);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
triangle(0+x,0+y,Math.cos(-30)*len+x,Math.sin(-30)*len+y,Math.cos(210)*len)+x,Math.sin(210)*len+y;
}
