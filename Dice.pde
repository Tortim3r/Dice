void setup()
{
	size(800,800);
	noLoop();
}
void draw()
{
	Die cuphead = new Die(10,10);
	cuphead.roll();
	cuphead.show();
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX,myY,rollNum;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;

	}
	void roll()
	{
		rollNum = ((int)(Math.random()*6)+1);
	}
	void show()
	{
		fill(255);
		rect(myX,myY,100,100,15);
		fill(0);
		if(rollNum == 1)
		{
			ellipse(myX+50,myY+50,15,15);
		}
	}
}
