class Spaceship extends Floater  
{   
  corners=3;  //the number of corners, a triangular floater has 3   
  xCorners[]={0,0,0};   
  yCorners[]={0,0,0};   
  myColor=((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));   
  myCenterX, myCenterY=250; //holds center coordinates   
  myDirectionX, myDirectionY=0; //holds x and y coordinates of the vector for direction of travel   
  myPointDirection=0; //holds current direction the ship is pointing in degrees    
}
