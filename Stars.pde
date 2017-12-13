class Stars 
{
  private int size;
  private int myX, myY;
  public Stars()
  {
  	size = (int)(Math.random()*5)+1;
  	myX = (int)(Math.random()*1000);
  	myY = (int)(Math.random()*1000);
  }
  public void show()
  {
  	fill(255);
  	ellipse(myX, myY, size, size);
  }
}