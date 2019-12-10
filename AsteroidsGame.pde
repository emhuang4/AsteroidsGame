//your variable declarations here
Spaceship newSpaceship;
Star [] allStars;
Bullet newBullet;
ArrayList <Asteroid> rock = new ArrayList <Asteroid> ();
public void setup() 
{
	size (500,500);

	newSpaceship= new Spaceship();
	newBullet=new Bullet();

	allStars= new Star[350];
	for (int i=0;i<allStars.length;i++){
		allStars[i]= new Star();
	}

	for (int ii=0;ii<10;ii++){
		rock.add (new Asteroid());
	}
}
public void draw() 
{
	background(0);

  	for (int ii=0;ii<allStars.length;ii++){
		allStars[ii].show();
	}

	newSpaceship.show();
    newSpaceship.move();
    newBullet.show();

	for (int i=0;i<rock.size();i++){
  		rock.get(i).show();
  		rock.get(i).move();
  		if (dist((float)(rock.get(i).myCenterX),(float)(rock.get(i).myCenterY),(float)(newSpaceship.myCenterX),(float)(newSpaceship.myCenterY))<20){
  			rock.remove(i);
  		}
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
		newSpaceship.accelerate((int)5);
	}
	if (keyCode==RIGHT){ //turn right
		newSpaceship.turn(10);
	}
	if (keyCode==LEFT){ //turn left
		newSpaceship.turn(-10);
	}

}

