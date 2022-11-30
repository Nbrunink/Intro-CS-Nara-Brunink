int x = 7;
int y = 10;

int dx = 7; //change in x direction (left, right)
int dy = 10; //change in y direction (top, bottom)

color r = #EFA097; //red
color g = #6CA052; //green
color b = #5698C6; //blue
color p = #A992E3; //purple
color w = 250; //white

void setup() {
 size(800, 800);
 
 }

void draw() {
  background(0);
  
  x = x + dx;
  if (x >= 800) {
    dx = -dx; 
   w = r;
  }
  if (x <= 0) {
    dx = -dx;
   w = b;
  }
  
   y = y + dy;
  if (y >= 800){
    dy = -dy;
   w = p;
  }
  
  if(y <= 0) {
    dy = -dy; 
   w = g;
  }
  
 fill(w);
  circle(x, y, 50);
  
  
}
