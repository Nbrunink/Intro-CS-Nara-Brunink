
void setup() {
size(1000, 1000);
background(250, 250, 250);

}

void draw() {
  square(400, 400, 300);
  noStroke();
  circle(500, 300, 200);
  if (keyPressed) {
    background(240, 234, 0);
  } else {
    background(0, 100, 200);
  }
  if(mousePressed) {
    text("I love dogs!", mouseX, mouseY);
  }
}
