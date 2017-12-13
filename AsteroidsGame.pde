Spaceship Falcon = new Spaceship();
Stars [] galaxy;
ArrayList <Asteroid> potato = new ArrayList<Asteroid>();
ArrayList <Bullet> blaster = new ArrayList<Bullet>();
public void setup() 
{
 	size(1000,1000);
 	background(0);
 	for (int i = 0; i < 25; i++)
 	{
 		potato.add(new Asteroid());
 	}
 	galaxy = new Stars[(int)(Math.random()*200)+100];
 	for (int i = 0; i < galaxy.length; i++)
 	{
 		galaxy[i] = new Stars();
 	}
}
public void draw()
{
	background(0);
	for (int i = 0; i < blaster.size(); i++)
 	{
 		for (int j = 0; j < potato.size(); j++)
 		{
	 		blaster.get(i).show();
	 		blaster.get(i).move();
	 		if(dist(blaster.get(i).getX(),blaster.get(i).getY(),potato.get(j).getX(),potato.get(j).getY()) < 30)
	 		{
	 	 		potato.remove(j);
	 		}
	 	}
 	}
  	Falcon.show();
  	Falcon.move();
  	for (int i = 0; i < galaxy.length; i++)
  	{
    	galaxy[i].show();
	}
	for (int i = 0; i < potato.size(); i++)
 	{
	 	potato.get(i).show();
	 	potato.get(i).move();
	 	if(dist(Falcon.getX(),Falcon.getY(),potato.get(i).getX(),potato.get(i).getY()) < 30)
	 	{
	 	 	potato.remove(i);
	 	}
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
	if(key == 'e')
	{
		blaster.add(new Bullet(Falcon));
	}
}