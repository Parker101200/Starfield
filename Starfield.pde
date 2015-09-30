NormalParticle [] bob;//your code here
public void setup()
{
	size(400,400);
	bob = new NormalParticle [1000];
	for(int i = 0; i < bob.length; i++)
	{
		bob[i] = new NormalParticle(200, 200);
	}
}
public void draw()
{
	background(0);
	for(int i = 0; i < bob.length; i++)
	{
		bob[i].move();
		bob[i].show(); 
	}
}
class NormalParticle
{
	int c = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	double x, y, speed, angle;
	NormalParticle(int x, int y)
	{
		x = x;
		y = y;
		speed = (double)(Math.random()*1);
		angle = (double)(Math.random()*7);
	}
	void move()
	{
		x = x + Math.cos(angle) * speed;
		y = y + Math.sin(angle) * speed;
	}
	void show()
	{
		fill(c);
		noStroke();
		ellipse((float)x+200, (float)y+200, 5, 5);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

