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
	if (key=='1'){ //hyperspace
		newSpaceship.setmyDirectionX((double)0);
		newSpaceship.setmyDirectionY((double)0);
		newSpaceship.setmyPointDirection((double)(Math.random()*360));
	}
	if (key=='rightarrow'){ //turn right
		newSpaceship.turn(10);
	}
	if (key=='leftarrow'){ //turn left
		newSpaceship.turn(-10);
	}
	if (key=='2'){ //accelerate 
		newSpaceship.accelerate((int)10);
	}
}

