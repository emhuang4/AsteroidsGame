class Bullet extends Floater {
	private boolean gone= false;
	public Bullet (Spaceship newSpaceship){
		myCenterX=newSpaceship.getmyCenterX();
		myCenterY=newSpaceship.getmyCenterY(); //holds center coordinates   
 		myPointDirection=newSpaceship.getmyPointDirection();
 		double dRadians=myPointDirection*(Math.PI/180); //holds current direction the ship is pointing in degrees    
		accelerate (newSpaceship.getSpeed()+2);
		// myDirectionX=5*Math.cos(dRadians)+myDirectionX;
		// myDirectionY=5*Math.cos(dRadians)+myDirectionY;


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

		public boolean getGone(){return gone;}
	
	public void show(){
		fill(255);
		ellipse((float)myCenterX,(float) myCenterY, 5, 5);
	}
	public void move(){
	//change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if(myCenterX >width)
    {     
      gone=true;
    }    
    else if (myCenterX<0)
    {     
      gone=true;   
    }    
    if(myCenterY >height)
    {    
      gone=true;   
    } 
    
    else if (myCenterY < 0){     
      gone=true;    
    }   
	}
	
}
