class Spaceship extends Floater  
{   
 public Spaceship {
 int corners=4;  //the number of corners, a triangular floater has 3   
 xCorners= new int[corners];
 yCorners=new int[corners];
 xCorners[0]=-8;
 yCorners[0]=-8;
 xCorners[1]=16;
 yCorners[1]=0;
 xCorners[2]=-8;
 yCorners[2]=8;
 xCorners[3]=-2;
 yCorners[3]=0;

 int myColor=(0);   
 double myCenterX, myCenterY=250; //holds center coordinates   
 double myDirectionX, myDirectionY=0; //holds x and y coordinates of the vector for direction of travel   
 double myPointDirection=0; //holds current direction the ship is pointing in degrees    
 }

public void setX(int x){myCenterX=x;}
public void setY(int y){myCenterY=y;}
public int getX(){return (int)myCenterX;}
public int getY(){return (int)myCenterY;}
public void setDirectiox(double x){myDirectionX=x;}
public double getDirection(){return (double)myDirectionX;}

}
