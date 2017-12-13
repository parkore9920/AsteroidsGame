class Bullet extends Floater
{
    private int mySize;
    public Bullet(Spaceship theShip)
    {
    corners = 5;
    int[] x = {-1,1,2,1,-1};
    int[] y = {-1,-1,0,1,1};
    xCorners = x;
    yCorners = y;
    myColor = color(255,0,0);
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    double radians = (myPointDirection*(Math.PI/180));
    myDirectionX = 5*Math.cos(radians) + theShip.getDirectionX();
    myDirectionY = 5*Math.sin(radians) + theShip.getDirectionY();
    mySize = 2;
    }
    public void setX(int x){myCenterX = x;}
    public int getX(){return (int)myCenterX;}
    public void setY(int y){myCenterY = y;}
    public int getY(){return (int)myCenterY;}
    public void setDirectionX(double x){myDirectionX = x;}
    public double getDirectionX(){return myDirectionX;}
    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return myDirectionY;}
    public void setPointDirection(int degrees){myPointDirection = degrees;}
    public double getPointDirection(){return myPointDirection;}
    public void move()
    {
        myCenterX += myDirectionX;    
        myCenterY += myDirectionY;
    }
    public void show()
    {
    fill(myColor);   
    stroke(myColor); 
    rect((float)myCenterX,(float)myCenterY,8,2);
    }
}