float xx=width/2;
float yy=height/2;
public void setup()
{
size(900,900);
xx=400;//width;
yy=400;//height;
}
public void draw()
{
sierpinski(xx,yy,500);
}
public void mouseDragged()//optional
{
xx=mouseX-250;
yy=(float)(mouseY+Math.sin(PI/3)*250);
}
public void sierpinski(float x, float y, float len) 
{
  //triangle(x,y,x+len, y,x+len/2,(float)(y-Math.sin(PI/3)*len));

  if (len<20)
triangle(x,y,x+len, y,x+len/2,(float)(y-Math.sin(PI/3)*len));
else{
//rotate(PI);
//triangle(x,y,x+len, y,x+len/2,(float)(y-Math.sin(PI/3)*len));

sierpinski(x,y,len/2);
sierpinski(x+len/2,y,len/2);
sierpinski(x+len/4,y-len/2,len/2);

}
}
