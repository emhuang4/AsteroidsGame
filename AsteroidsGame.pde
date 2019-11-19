//your variable declarations here
Spaceship newSpaceship;
Star [] allStars;
public void setup() 
{
size (500,500);
newSpaceship= new Spaceship();
allStars= new Star[200];
for (int i=0;i<allStars.length;i++){
	allStars[i]= new Star();
}

}
public void draw() 
{
	background(0);
	newSpaceship.show();
    newSpaceship.move();
  for (int i=0;i<allStars.length;i++){
	allStars[i].show();
}

}
public void keyPressed()
{
	if (keyCode==49){ //hyperspace
		newSpaceship.setX((double)(Math.random()*500));
		newSpaceship.setY((double)(Math.random()*500));
		newSpaceship.setmyDirectionX((double)0);
		newSpaceship.setmyDirectionY((double)0);
	}
	if (keyCode==50){ //accelerate 
		newSpaceship.accelerate((int)10);
	}
	if (keyCode==RIGHT){ //turn right
		newSpaceship.turn(10);
	}
	if (keyCode==LEFT){ //turn left
		newSpaceship.turn(-10);
	}

}

