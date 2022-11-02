int x = 7;
int y = 10;

int dx = 7;
int dy = 10;

void setup() {
  size(1000, 1000);
}

void draw() {
  background(200);
  circle(x, y, 100);
  
  x = x + dx;
  if (x >= 1000) {
    dx = -dx; 
  }
  if (x <= 0) {
    dx = -dx;
  }
  
   y = y + dy;
  if (y >= 1000) {
    dy = -dy; 
  }
  
  if (y <= 0) {
    dy = -dy;
  }
}
