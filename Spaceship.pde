class Spaceship extends Floater  
{   
    public Spaceship()
    {
    	corners = 18;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	int[] xS = {0,8,16,28,28,20,20,28,28,16,18,18,8,0,-8,-12,-12,-8};
		int[] yS = {-16,-12,-8,-6,-4,-2,1,2,4,6,8,10,12,16,12,6,-6,-12};
		xCorners = xS;
		yCorners = yS;
    	myCenterX = 500;
    	myCenterY = 500;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
    	myColor = 125;
    }
    public void setX(int x){myCenterX = x;}
    //public int getX(){return(int)myCenterX;}
    public int getX(){return (int)myCenterX;}
    public void setY(int y){myCenterY = y;}
    //public int getY(){return(int)myCenterY;}
    public int getY(){return (int)myCenterY;}
    //public int getY(){return (int);}
    public void setDirectionX(double x){myDirectionX = x;}
    public double getDirectionX(){return myDirectionX;}
    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return myDirectionY;}
    public void setPointDirection(int degrees){myPointDirection = degrees;}
    public double getPointDirection(){return myPointDirection;}
    public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);   
    stroke(myColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
if (key == 'w')
{
	noFill();
	strokeWeight(2);
	stroke(0,191,255);
	arc(0, 0, 30, 30, HALF_PI, PI+HALF_PI);
	noStroke();

}
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
} 