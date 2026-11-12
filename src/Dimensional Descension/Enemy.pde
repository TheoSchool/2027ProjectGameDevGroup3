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

  // Draw the enemy to the screen
  void display() {
    fill(220, 40, 40); // Red shape placeholder
    ellipse(x, y, w, h);
    
    // If using an image:
    // if (pI != null) {
    //   image(PI, x, y, w, h);
    // }
  }

  // Update enemy position (moves down the screen and resets)
  void move() {
    y += speed;

    // Wrap around to the top when reaching the bottom edge
    if (y > height + h) {
      y = -h;
      x = random(width);
    }
  }

  // Returns true if this enemy touches the player
  boolean checkCollision(Player p) {
    float distance = dist(x, y, p.x, p.y);
    return distance < (w / 2.0 + p.w / 2.0);
  }
}
