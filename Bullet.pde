class Bullet extends Floater {
	public Bullet (Spaceship theShip){
		myCenterX=myCenterY=250; //holds center coordinates   
 		myDirectionX=myDirectionY=0; //holds x and y coordinates of the vector for direction of travel   
 		myPointDirection=0;
 		double dRadians=myPointDirection*(Math.PI/180); //holds current direction the ship is pointing in degrees    
		myDirectionX=5*Math.cos(dRadians)+myDirectionX;
		myDirectionY=5*Math.cos(dRadians)+myDirectionY;

	}
	
	public void show(){
		super.show();
	}
	
}
