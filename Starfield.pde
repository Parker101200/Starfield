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
class NormalParticle implements Particle
{
	int c = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	int c2 = color(255,255,255);
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
	public void move()
	{
		x = x + Math.cos(angle) * speed;
		y = y + Math.sin(angle) * speed;
	}
	public void show()
	{
		
	}
}
class JumboParticle //uses inheritance
{
	//your code here
}

