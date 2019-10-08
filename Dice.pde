void setup() {
	size(700,700);
	background(30);
	noLoop();
	

}

void draw() {
	for (int x=50;x<700;x+=60){
		Die die = new Die(50,50);
		die.show();
	}
}

void mousePressed() {
	redraw();
}

class Die //models one single dice cube
{
	int myX;
	int myY;
	int count;
	
	Die(int x, int y) {
		//variable initializations here
		myX=x;
		myY=y;
		roll();
	}

	void roll() {
		count = (int)(Math.random()*6)+1;
		//count = 1;
	}

	void show() {
		noStroke();
		fill(240);
		square(myX,myY,51);

		if (count == 1)
			one();
		else if (count == 2)
			two();
		else if (count == 3)
			three();
		else if (count == 4)
			four();
		else if (count == 5)
			five();
		else 
			six();

	}

	void one(){
		fill(0);
		ellipse(myX+25,myY+25,10,10);
	}

	void two(){
		fill(0);
		ellipse(myX+10,myY+35,10,10);
		ellipse(myX+35,myY+10,10,10);
	}

	void three(){
		fill(0);
		ellipse(myX+25,myY+25,10,10);
		ellipse(myX+10,myY+35,10,10);
		ellipse(myX+35,myY+10,10,10);
	}

	void four(){
		fill(0);
		ellipse(myX+10,myY+35,10,10);
		ellipse(myX+35,myY+10,10,10);
		ellipse(myX+10,myY+10,10,10);
		ellipse(myX+35,myY+35,10,10);
	}

	void five(){
		fill(0);
		ellipse(myX+10,myY+35,10,10);
		ellipse(myX+35,myY+10,10,10);
		ellipse(myX+10,myY+10,10,10);
		ellipse(myX+35,myY+35,10,10);
		ellipse(myX+25,myY+25,10,10);
	}

	void six(){
		fill(0);
		ellipse(myX+10,myY+35,10,10);
		ellipse(myX+35,myY+10,10,10);
		ellipse(myX+10,myY+10,10,10);
		ellipse(myX+35,myY+35,10,10);
		ellipse(myX+25,myY+10,10,10);
		ellipse(myX+25,myY+35,10,10);
	}

}
