// GameDev Project Group 3 by Sam Sharma, Theo Heisler, and Julian Bryson // 

class Player {
 // Member Variable  
int w,h;
float x,y;
PImage pI;
float health,speed;

// Constuctor
Player() {
x=50;
y=50;
w=50;
h=50;
pI=loadImage("placeholder.png");
speed=5;
health=100; 
}

// Member Methods
void displayed() {
image(pI,x,y);
fill(22,200,9);
//ellipse(x,y,w,h); 
}

void move(float targetX,float TargetY) {
float angle = atan2(targetX-x, TargetY-y);
}

void move() {
x+=speed;
}

}
