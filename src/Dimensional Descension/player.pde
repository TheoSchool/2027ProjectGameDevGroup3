// GameDev Project Group 3 by Sam Sharma, Theo Heisler, and Julian Bryson // 

class Player {
 // Member Variable  
int x,y,w,h;
PImage pI;
float health;

// Constuctor
Player() {
x=50;
y=50;
w=50;
h=50;
pI=loadImage("placeholder.png");
health=100; 
}

// Member Methods
void displayed() {
fill(22,200,9);
ellipse(x,y,w,h); 
}

}
