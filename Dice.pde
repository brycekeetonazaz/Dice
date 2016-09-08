Die bob;
int total = 0;
void setup()
{
	size(900,800);
	noLoop();
}
void draw()
{
	//your code here
	background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	for(int thaX = (width/3)-183; thaX < 900; thaX += 266)
	{
		for(int thaY = (height/3)-250; thaY < 550; thaY += 200)
		{
			bob = new Die(thaX,thaY);
			bob.show();
			total += bob.myValue;
		}
	}
	textSize(45);
	textAlign(CENTER);
	text("Total Value: "+total,width-500,height-200);
	if((float)(total%11) == 0)
	{
		text("DUBS CHECKEM",width-500,height-100);
	}
}
void mousePressed()
{
	total = 0;
	bob.roll();
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
		myValue = (int)((Math.random())*6)+1;
	}
	void roll()
	{
		//your code here
		myValue = (int)((Math.random())*6)+1;
		
	}
	void show()
	{
		//your code here
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		rect(myX,myY,100,100,250);
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		if(myValue == 1||myValue == 3||myValue == 5)
		{
			ellipse(myX+50,myY+50,25,25);
		}
		if(myValue > 1)
		{
			ellipse(myX+25,myY+25,25,25);
			ellipse(myX+75,myY+75,25,25);
		}
		if(myValue >3)
		{
			ellipse(myX+75,myY+25,25,25);
			ellipse(myX+25,myY+75,25,25);
		}
		if(myValue == 6)
		{
			ellipse(myX+25,myY+50,25,25);
			ellipse(myX+75,myY+50,25,25);
		}
	}
}