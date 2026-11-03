// Sam Sharma 

class player {
 // Member Variable  
Int x,y,w,h;
PImage pI;
float health;

// Constuctor
player() {
x=50
y=50
w=50
h=50
pI=loadImage("");
health=100; 
}

// Member mMthods
void displayed() {
fill(22,200,9);
ellipse(x,y,w,h); 
}

}
