void setup()
{
	size(800,800);
	noLoop();
}
void draw()
{
	background(200);
	for(int i = 10;i<700; i+=60){
		for(int o = 10;o<800; i o+= 60){
			Die cuphead = new Die(o,i);
			cuphead.show();
			cuphead.roll();
		}
	}
	
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
		fill(0);

		
		if(rollNum == 1)
		{
			ellipse(myX+50,myY+50,15,15);
		}
		else if(rollNum == 2)
		{
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
		}
		else if(rollNum == 3)
		{
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+50,myY+50,15,15);
			ellipse(myX+75,myY+75,15,15);
		}	
		else if(rollNum == 4)
		{
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+25,myY+75,15,15);
			ellipse(myX+75,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
		}
		else if(rollNum == 5)
		{
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+25,myY+75,15,15);
			ellipse(myX+75,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
			ellipse(myX+50,myY+50,15,15);
		}
		else if(rollNum == 6)
		{
			ellipse(myX+25,myY+25,15,15);
			ellipse(myX+25,myY+75,15,15);
			ellipse(myX+75,myY+25,15,15);
			ellipse(myX+75,myY+75,15,15);
			ellipse(myX+25,myY+50,15,15);
			ellipse(myX+75,myY+50,15,15);
		}
	}
	void show()
	{
		fill(255);
		rect(myX,myY,100,100,15);
		
	}
		
}
