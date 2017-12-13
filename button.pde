class Button
{
   int bx,by;
   float bWidth,bHeight;
   
     Button(int x, int y, float Width, float Height)
   {
     bx=x;
     by=y;
     bWidth=Width;
     bHeight=Height;
   }
    
    void display()
  {
    rect(bx,by,bWidth,bHeight);
  }
}