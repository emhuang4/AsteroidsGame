//your variable declarations here
Spaceship newShip;
public void setup() 
{
size (500,500);
newShip= new Spaceship();
 int corners=4;  //the number of corners, a triangular floater has 3   
 int[] xCorners={-8,16,-8,-2};   
 int[] yCorners={-8,0,8,0};  
 // xCorners=xS;
 // yCorners-yS; 
 // int[] xS={-8,16,-8,-2};
 // int[] yS={-8,0,8,0};
 int myColor=((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));   
 double myCenterX, myCenterY=250; //holds center coordinates   
 double myDirectionX, myDirectionY=0; //holds x and y coordinates of the vector for direction of travel   
 double myPointDirection=0; //holds current direction the ship is pointing in degrees    
}
public void draw() 
{
	newShip.show();
}
public void keyPressed()
{
	
}

