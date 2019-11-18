class Star //note that this class does NOT extend Floater
{
  private int myX, myY, myColor;
  public Star(){
  	myX=((int)((Math.random()*500)+1));
  	myY=((int)((Math.random()*500)+1));
  }
  public void show(){
  	fill ((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  	ellipse (myX,myY,5,5);
  	noStroke();
  }
}
