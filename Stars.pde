class Stars //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Stars()
  {
  	myX = (int)(Math.random()*500);
  	myY = (int)(Math.random()*500);
  }
 /* Stars[] nightSky = new Stars[200];
  public void setup()
  {
  	size(500,500);
  	for (int i = 0; i < nightSky.length; i++)
  	{
  		nightSky[i] = new Stars();
  	}
  }
  public void draw()
  {
  	background(0);
  	for (int i = 0; i < nightSky.length; i++)
  	{
  		nightSky[i].show();
  	}
  }
  */
  public void show()
  {
  	fill(255);
  	ellipse(myX, myY, 2, 2);
  }
}