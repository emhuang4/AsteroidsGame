class Asteroid extends Floater{
	private int rotSpeed;
	public Asteroid (){
		corners=6;
		xCorners=new int [corners];
		yCorners=new int [corners];
		xCorners[0]=-11;
		yCorners[0]=-8;
		xCorners[1]=-7;
		yCorners[1]=-8;
		xCorners[2]=13;
		yCorners[2]=0;
		xCorners[3]=6;
		yCorners[3]=10;
		xCorners[4]=-11;
		yCorners[4]=8;
		xCorners[5]=-5;
		yCorners[5]=0;

		rotSpeed=((int)(Math.random()*5));
		// myColor=color(255);
		myCenterX=(Math.random()*500);
		myCenterY=(Math.random()*500);
		myDirectionX=(Math.random()*2);
		myDirectionY=(Math.random()*2);
		myPointDirection=(Math.random()*360);

		for (int i=0;i<allAsteroids.length();i++){
		ArrayList <Integer> theList= new ArrayList <Integer> ();
			theList.add(allAsteroids);
		}
	}
	public void setrotSpeed (int x){rotSpeed=x;};
	public double getrotSpeed() {return rotSpeed;}

	public void move(){
		turn (rotSpeed);
		super.move();
	}

	public void show ()  //Draws the floater at the current position 
	{             
    noFill();   
    stroke(255,150);   
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

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }   
} 
