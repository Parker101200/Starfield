Particle [] star;
interface Particle
{
	public void show();
	public void move();
}
public void setup()
{
	size(400,400);
	star = new Particle[5000];
	for(int i = 0; i < 4999; i++)
	{
		star[i] = new NormalParticle(200,200);
		star[4999] = new OddballParticle(200,200);
	}
}
public void draw()
{
	background(0);
	for(int i = 0; i < star.length; i++)
	{
		star[i].move();
		star[i].show(); 
	}
}
class NormalParticle implements Particle
{
	int c = color((int)(Math.random()*255));
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
		ellipse((float)x+200, (float)y+200, 2.5, 2.5);
	}
}
class OddballParticle implements Particle //uses an interface
{
	double x, y, speed, angle;
	OddballParticle(int x, int y)
	{
		x = x;
		y = y;
		speed = 0.2;
		angle = (double)(Math.random()*6.5);
	}
	public void move()
	{
		x = x + Math.cos(angle) * speed;
		y = y + Math.sin(angle) * speed;
	}
	public void show()
	{
		fill(255,255,0);
		ellipse((float)x+200, (float)y+200, 8, 8);
	}
}
class JumboParticle extends OddballParticle //uses inheritance
{
	JumboParticle()
	{
		x = x;
		y = y;
		speed = 0.001;
		angle = (double)(Math.random()*6.5);
	}
}

