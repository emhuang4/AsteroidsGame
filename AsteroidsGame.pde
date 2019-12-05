//your variable declarations here
Spaceship newSpaceship;
Star [] allStars;
Asteroid [] allAsteroids;
public void setup() 
{
	size (500,500);

	newSpaceship= new Spaceship();

	allStars= new Star[350];
	for (int i=0;i<allStars.length;i++){
		allStars[i]= new Star();
	}
	allAsteroids=new Asteroid [10];
	for (int i=0;i<allAsteroids.length;i++){
		allAsteroids[i]= new Asteroid();
	}
}
public void draw() 
{
	background(0);

  	for (int i=0;i<allStars.length;i++){
		allStars[i].show();
	}

	newSpaceship.show();
    newSpaceship.move();

	for (int i=0;i<allAsteroids.length;i++){
  		allAsteroids[i].show();
  		allAsteroids[i].move();
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

