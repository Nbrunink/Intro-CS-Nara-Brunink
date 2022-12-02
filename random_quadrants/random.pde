color r = #AB1E1E;
color g = #225A06;
color b = #06305A;
color l = #EFEC31;


float x;
float y;

void setup() {
  size(600, 600);
}

void draw() {
  
     x = random(0, 601);
  y = random(0, 601);
  
  //top left quadrant
 if(x < 300 && y < 300) {
 fill(r);
 }
 
 //top right quadrant
 if(x > 300 && y < 300) {
   fill(g);
 }
 
 //bottom right quadrant
 if(x > 300 && y > 300) {
   fill(b);
 }
 
 //bottom left quadrant
 if(x < 300 && y > 300) {
   fill(l);
 }
   

  circle(x, y, 20);
  
 
 
  
}
