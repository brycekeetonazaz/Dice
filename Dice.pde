Die bob;
void setup()
{
	size(1000,800);
	noLoop();
}
void draw()
{
	//your code here
	for(int thaX = 100; thaX <= 900; thaX += 200)
	{
		for(int thaY = 100; thaY <= 700; thaY += 200)
		{
			bob = new Die(thaX,thaY);
			bob.show();
		}
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myValue, myX, myY;
	Die(int x, int y)
	{
		//variable initializations here
		myX = x;
		myY = y;
	}
	void roll()
	{
		//your code here
		myValue = (int)((Math.random())*6);
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX,myY,100,100);
		fill(0);
		text(myValue,myX+50,myY+50);
	}
}
