Spaceship Falcon = new Spaceship();
Asteroid [] potato;
Stars [] aBunch;
public void setup() 
{
 size(1000,1000);
 background(0);
 potato = new Asteroid[25];
 for (int i = 0; i < potato.length; i++)
 {
 	potato[i] = new Asteroid();
 }
 aBunch = new Stars[(int)(Math.random()*200)+100];
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
	for (int i = 0; i < potato.length; i++)
 	{
 	potato[i].show();
 	potato[i].move();
 	}
}
public void keyPressed()
{
	if(key == 'w')
	{
		Falcon.accelerate(2);
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
		Falcon.accelerate(-2);
	}
	if(key == 'p')
	{
		Falcon.setX((int)(Math.random()*1000));
		Falcon.setY((int)(Math.random()*1000));
		Falcon.setDirectionX(0);
		Falcon.setDirectionY(0);
		Falcon.setPointDirection((int)(Math.random()*360));
	}
}