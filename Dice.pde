void setup() {
	size(700,700);
	background(30);
	noLoop();
	

}

void draw() {

	for (int x=20;x<680;x+=60){
		int y=20;
		Die die = new Die(x,y);
		die.show();
		for (y=20;y<680;y+=60){
			Die diey = new Die(x,y);
			diey.show();
		}
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
		fill(100);
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
		fill(210,20,80);
		ellipse(myX+25,myY+25,10,10);
	}

	void two(){
		fill(250,150,10);
		ellipse(myX+10,myY+40,10,10);
		ellipse(myX+40,myY+10,10,10);
	}

	void three(){
		fill(230,230,150);
		ellipse(myX+10,myY+40,10,10);
		ellipse(myX+25,myY+25,10,10);
		ellipse(myX+40,myY+10,10,10);
	}

	void four(){
		fill(10,240,40);
		ellipse(myX+10,myY+40,10,10);
		ellipse(myX+10,myY+10,10,10);
		ellipse(myX+40,myY+10,10,10);
		ellipse(myX+40,myY+40,10,10);
	}

	void five(){
		fill(40,150,250);
		ellipse(myX+10,myY+40,10,10);
		ellipse(myX+10,myY+10,10,10);
		ellipse(myX+25,myY+25,10,10);
		ellipse(myX+40,myY+10,10,10);
		ellipse(myX+40,myY+40,10,10);
	}

	void six(){
		fill(200,10,240);
		ellipse(myX+10,myY+40,10,10);
		ellipse(myX+25,myY+10,10,10);
		ellipse(myX+10,myY+10,10,10);
		ellipse(myX+25,myY+40,10,10);
		ellipse(myX+40,myY+10,10,10);
		ellipse(myX+40,myY+40,10,10);
	}

}
