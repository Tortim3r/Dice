void setup()
{
	size(800,800);
	noLoop();
}
int rollCount = 0;
void draw()
{
	background(200);
	for(int i = 0;i<700; i+=100){
		for(int o = 0;o<800; o+= 100){
			Die cuphead = new Die(o,i);
			cuphead.show();
			cuphead.roll();
			
			
		}
	}
	textSize(50);
	text("total roll: "+ rollCount,250,750);
}
void mousePressed()
{
	rollCount = 0;
	redraw();

}
class Die //models one single dice cube
{
	int myX,myY,rollNum;
	
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		rollNum = ((int)(Math.random()*6)+1);
	}
	void roll()
	{
		
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
		rollCount = rollCount + rollNum;
	}
		
}
