Die bob;
Die mult;
int xPos=30;
int yPos=30;
int number;
int dots;
void setup()
	{
		size(400,400);
	    noLoop();
	}
	void draw()
	{
		background(0);
		fill(255);
		text("Total:" + number, 165,390);
		number =0;
		for(int x = 30; x<=370 ; x+=40)
		{
			for (int y = 30; y<= 370; y+=50)
			{
			Die mult = new Die(x,y);
			mult.show();
			mult.roll();
			number += dots;
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
	    int myX,myY;
	    Die(int x, int y) //constructor
	    {
	    	dots=(int)(Math.random()*6)+1;
	    	myX=x;
	    	myY=y;

	        //variable initializations here
	    }
	    void roll()
	    {
	        fill(0);
	    	if(dots ==1)
	    	{
	    		ellipse(myX+15,myY+15,5,5); // center
	    	}
	    	else if (dots ==2)
	    	{
	    		ellipse(myX+7.5,myY+7.5,5,5); //left top corner
	    		ellipse(myX+22.5,myY+22.5,5,5); // right bottom corner
	    	}
	    	else if (dots ==3)
	    	{
	    		ellipse(myX+7.5,myY+7.5,5,5);
	    		ellipse(myX+22.5,myY+22.5,5,5);
	    		ellipse(myX+15,myY+15,5,5);
	    	}
	    	else if(dots ==4)
	    	{
	    		ellipse(myX+7.5,myY+7.5,5,5); 
	    		ellipse(myX+22.5,myY+22.5,5,5);
	    		ellipse(myX+7.5,myY+22.5,5,5); //left bottom corner
	    		ellipse(myX+22.5,myY+7.5,5,5); //right bottom corner
	    	}
	    	else if(dots == 5)
	    	{
	    		ellipse(myX+7.5,myY+7.5,5,5); 
	    		ellipse(myX+22.5,myY+22.5,5,5);
	    		ellipse(myX+7.5,myY+22.5,5,5); 
	    		ellipse(myX+22.5,myY+7.5,5,5); 
	    		ellipse(myX+15,myY+15,5,5); 
	    	}
	    	else if(dots == 6)
	    	{
	    		ellipse(myX+10,myY+7.5,5,5);
	    		ellipse(myX+10,myY+15,5,5);
	    		ellipse(myX+10,myY+22.5,5,5);
	    		ellipse(myX+20,myY+7.5,5,5);
	    		ellipse(myX+20,myY+15,5,5);
	    		ellipse(myX+20,myY+22.5,5,5);
	    	}//your code here
	    }
	    void show()
	    {
	    	fill(255);
	    	rect(myX,myY,30,30);

	        //your code here
	    }
	}

