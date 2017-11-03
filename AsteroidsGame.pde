Spaceship Falcon = new Spaceship();
Stars [] aBunch;
public void setup() 
{
 size(500,500);
 background(0);
 aBunch = new Stars[(int)(Math.random()*100)+100];
 for (int i = 0; i < aBunch.length; i++)
 {
 	aBunch[i] = new Stars();
 }
}
public void draw() 
{
	background(0);
  	Falcon.show();
  	Falcon.move();
  	for (int i = 0; i < aBunch.length; i++)
  	{
    aBunch[i].show();
	}
}
public void keyPressed()
{
	if(key == 'w')
	{
		Falcon.accelerate(0.5);
	}
	if(key == 'a')
	{
		Falcon.turn(-15);
	}
	if(key == 'd')
	{
		Falcon.turn(15);
	}
	if(key == 's')
	{
		Falcon.accelerate(-0.5);
	}
	if(key == 'p')
	{
		Falcon.setX((int)(Math.random()*500));
		Falcon.setY((int)(Math.random()*500));
		Falcon.setDirectionX(0);
		Falcon.setDirectionY(0);
		Falcon.setPointDirection((int)(Math.random()*360));
	}
}