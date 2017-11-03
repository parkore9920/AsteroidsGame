class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	corners = 18;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = 0;
    	yCorners[0] = -8;
    	xCorners[1] = 4;
    	yCorners[1] = -6;
    	xCorners[2] = 8;
    	yCorners[2] = -4;
    	xCorners[3] = 14;
    	yCorners[3] = -3;
    	xCorners[4] = 14;
    	yCorners[4] = -2;
    	xCorners[5] = 10;
    	yCorners[5] = -1;
    	xCorners[6] = 10;
    	yCorners[6] = 1;
    	xCorners[7] = 14;
    	yCorners[7] = 1;
    	xCorners[8] = 14;
    	yCorners[8] = 2;
    	xCorners[9] = 8;
    	yCorners[9] = 3;
    	xCorners[10] = 9;
    	yCorners[10] = 4;
    	xCorners[11] = 9;
    	yCorners[11] = 5;
    	xCorners[12] = 4;
    	yCorners[12] = 6;
    	xCorners[13] = 0;
    	yCorners[13] = 8;
    	xCorners[14] = -4;
    	yCorners[14] = 6;
    	xCorners[15] = -6;
    	yCorners[15] = 3;
    	xCorners[16] = -6;
    	yCorners[16] = -3;
    	xCorners[17] = -4;
    	yCorners[17] = -6;
    	myCenterX = 250;
    	myCenterY = 250;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
    	myColor = 125;
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
}