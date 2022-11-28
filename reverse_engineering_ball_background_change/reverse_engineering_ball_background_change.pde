int x = 7;
int y = 10;

int dx = 7; //change in x direction (left, right)
int dy = 10; //change in y direction (top, bottom)

color r = #EFA097; //red
color g = #6CA052; //green
color b = #5698C6; //blue
color p = #A992E3; //purple
color l = 0; //black

void setup() {
 size(800, 800);
 
 }

void draw() {
  background(l);
  
  x = x + dx;
  if (x >= 800) {
    dx = -dx; 
   l = r;
  }
  if (x <= 0) {
    dx = -dx;
   l = b;
  }
  
   y = y + dy;
  if (y >= 800){
    dy = -dy;
   l = p;
  }
  
  if(y <= 0) {
    dy = -dy; 
   l = g;
  }
  
  circle(x, y, 50);
  
  
}
