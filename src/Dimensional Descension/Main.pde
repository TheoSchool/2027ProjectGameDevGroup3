// Group 3 Project Gamedev 2027 by Theo Heisler, Julian Bryson, and Sam Sharma //

import processing.sound.*;
import gifAnimation.*;
Player player01;
Enemy enemy01;
ArrayList<Player> player = new ArrayList<Player>();
PImage King;

void setup() {
size(1000,750);
imageMode(CENTER);
player.add(new Player());
}
void draw() {
background(#000000);
for (Player p : player) {
p.move(mouseX,mouseY);
p.displayed();
}
}
void mousePressed() {
for (Player p : player) {
p.move(mouseX,mouseY);
p.displayed();
 }
