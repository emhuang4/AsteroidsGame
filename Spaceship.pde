class Spaceship extends Floater  
{   
	int speed;
 public Spaceship() {
 corners=4;  //the number of corners, a triangular floater has 3   
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

 myColor=color(255);   
 myCenterX=myCenterY=250; //holds center coordinates   
 myDirectionX=myDirectionY=0; //holds x and y coordinates of the vector for direction of travel   
 myPointDirection=0; //holds current direction the ship is pointing in degrees    
 }

public void setmyCenterX(double x){myCenterX=x;}
public double getmyCenterX(){return myCenterX;}

public void setmyCenterY(double y){myCenterY=y;}
public double getmyCenterY(){return myCenterY;}

public void setmyDirectionX(double x){myDirectionX=x;}
public double getmyDirectionX(){return myDirectionX;}

public void setmyDirectionY(double y){myDirectionY=y;}
public double getmyDirectionY(){return myDirectionY;}

public void setmyPointDirection(double a){myPointDirection=a;}
public double getmyPointDirection(){return myPointDirection;}

public void setSpeed(int s){speed=s;}
public int getSpeed(){return speed;}
	
	public void accelerate (double dAmount){
		speed+=dAmount;
		super.accelerate(dAmount);
	}
 
}
