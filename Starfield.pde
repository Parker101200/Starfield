Particle [] bob;
Particle [] tod;
public void setup()
{
	size(400,400);
	bob = new NormalParticle [1000];
	tod = new OddballParticle[1];
	for(int i = 0; i < bob.length; i++)
	{
		bob[i] = new NormalParticle(200, 200);
	}
	for(int i = 0; i < tod.length; i++)
	{
		tod[i] = new OddballParticle(200, 200);
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
	for(int i = 0; i < tod.length; i++)
	{
		tod[i].show();
		tod[i].move();
	}
}
class NormalParticle implements Particle
{
	int c = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	double x, y, speed, angle;
	NormalParticle(int x, int y)
	{
		x = x;
		y = y;
		speed = (double)(Math.random()*1);
		angle = (double)(Math.random()*6.5);
	}
	public void move()
	{
		x = x + Math.cos(angle) * speed;
		y = y + Math.sin(angle) * speed;
	}
	public void show()
	{
		fill(c);
		noStroke();
		ellipse((float)x+200, (float)y+200, 2, 2);
	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle //uses an interface
{
	double x, y, speed, angle;
	OddballParticle(int x, int y)
	{
		x = x;
		y = y;
		speed = (double)(Math.random()*0.5);
		angle = (double)(Math.random()*6.5);
	}
	public void move()
	{
		x = x + Math.cos(angle) * speed;
		y = y + Math.sin(angle) * speed;
	}
	public void show()
	{
		fill(255,255,255);
		ellipse((float)x+200, (float)y+200, 10, 10);
	}
}
class JumboParticle //uses inheritance
{
	//your code here
}

