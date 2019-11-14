//your variable declarations here
Spaceship newSpaceship;
public void setup() 
{
size (500,500);
newSpaceship= new Spaceship();

}
public void draw() 
{
	background(0);
	newSpaceship.show();
    newSpaceship.move();

}
public void keyPressed()
{
	if (key==' '){
		newSpaceship.setmyDirectionX((double)0);
		newSpaceship.setmyDirectionY((double)0);
		newSpaceship.setmyPointDirection((double)(Math.random()*360));
	}
}

