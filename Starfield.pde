Particle [] star;
interface Particle
{
	public void show();
	public void move();
}
public void setup()
{
	size(700, 700);
	star = new Particle[1000];
	for(int i = 0; i < 998; i++)
	{
		star[i] = new NormalParticle(350,350);
	}
	star[999] = new OddballParticle();
	star[998] = new JumboParticle();
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
		ellipse((float)x+350, (float)y+350, 2.5, 2.5);
	}
}
class OddballParticle implements Particle //uses an interface
{
	double x, y, speed, angle;
	int size, r, g, b;
	OddballParticle()
	{
		x = 350;
		y = 350;
		r = 255;
		g = 0;
		b = 0;
		size = 8;
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
		fill(r,g,b);
		ellipse((float)x, (float)y, size, size);
	}
}
class JumboParticle extends OddballParticle //uses inheritance
{
	JumboParticle()
	{
		speed = 0.15;
		r = 0;
		g = 0;
		b = 255;
		size = 15;
	}
}