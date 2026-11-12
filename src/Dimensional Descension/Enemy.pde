class Enemy {
  // Member Variables
  float x, y;
  float speed;
  int w, h;
  PImage pI;
  float health;

  // Constructor
  Enemy(float startX, float startY) {
    x = startX;
    y = startY;
    w = 40;
    h = 40;
    speed = 3;
    health = 100;
    }

  void display() {
    fill(220, 40, 40); 
    ellipse(x, y, w, h);
    
    // If using an image:
    // if (pI != null) {
    //   image(PI, x, y, w, h);
    // }
  }

  void move() {
    y += speed;

    if (y > height + h) {
      y = -h;
      x = random(width);
    }
  }

  boolean checkCollision(player p) {
    float distance = dist(x, y, p.x, p.y);
    return distance < (w / 2.0 + p.w / 2.0);
  }
}
