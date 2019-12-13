//your variable declarations here
Spaceship newSpaceship;
Star [] allStars;
ArrayList <Bullet> bull = new ArrayList <Bullet> ();
ArrayList <Asteroid> rock = new ArrayList <Asteroid> ();
public void setup() 
{
	size (500,500);

	newSpaceship= new Spaceship();

	allStars= new Star[350];
	for (int i=0;i<allStars.length;i++){
		allStars[i]= new Star();
	}

	for (int ii=0;ii<10;ii++){
		rock.add (new Asteroid());
	}

	for (int iii=0;iii<15;iii++){
		bull.add (new Bullet(newSpaceship));
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

	for (int ii=0;ii<rock.size();ii++){
  		rock.get(ii).show();
  		rock.get(ii).move();
  		if (dist((float)(rock.get(ii).myCenterX),(float)(rock.get(ii).myCenterY),(float)(newSpaceship.myCenterX),(float)(newSpaceship.myCenterY))<20){
  			rock.remove(ii);
  		}
	}

	for (int iii=0;iii<bull.size();iii++){
    	bull.get(iii).move();
    	bull.get(iii).show();
    }
    	// if (bull.get(iii).myCenterX>500 || bull.get(iii).myCenterY>500){
    	// 	bull.remove(iii);
    for (int ii=0;ii<rock.size();ii++){
    	for (int iv=0;iv<bull.size();iv++)
    		if (dist((float)(bull.get(iv).myCenterX),(float)(bull.get(iv).myCenterY),(float)(rock.get(ii).myCenterX),(float)(rock.get(ii).myCenterY))<10){
			rock.remove(ii);
			bull.remove(iv);
			break;
		}
    }
}

public void keyPressed()
{
	if (keyCode==49){ //hyperspace
		newSpaceship.setmyCenterX((double)(Math.random()*500));
		newSpaceship.setmyCenterY((double)(Math.random()*500));
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
	if (keyCode==32){
		bull.add (new Bullet(newSpaceship));
	}
}

