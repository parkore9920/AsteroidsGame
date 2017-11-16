class Asteroid extends Floater
{
	private int rotateSpeed;
	public Asteroid()
	{
		corners = 8;
		int[] xS = {-16,-8,-4,8,16,4,-4,-12};
		int[] yS = {0,-8,-12,-8,0,8,8,4};
		xCorners = xS;
		yCorners = yS;
		myCenterX = (int)(Math.random()*1000);
    	myCenterY = (int)(Math.random()*1000);
    	myDirectionX = (int)(Math.random()*7)-3;
    	myDirectionY = (int)(Math.random()*7)-3;
    	myPointDirection = (int)(Math.random()*360);
    	myColor = color(101,67,33);
    	rotateSpeed = (int)(Math.random()*9)-4;
	}
	public void setX(int x){myCenterX = x;}
    public int getX(){return(int)myCenterX;}
    public void setY(int y){myCenterY = y;}
    public int getY(){return(int)myCenterY;}
    public void setDirectionX(double x){myDirectionX = x;}
    public double getDirectionX(){return myDirectionX;}
    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return myDirectionY;}
    public void setPointDirection(int degrees){myPointDirection = degrees;}
    public double getPointDirection(){return myPointDirection;}
    public void move () 
    {
    	turn(rotateSpeed);
    	super.move();
	}
}