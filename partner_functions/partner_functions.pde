float angle = 0;
float r = 0;
float g = 0;
float b = 0;

void setup() {
size (500, 500);
}

void draw() {
  angle += .05;
  if (angle >= PI) {
    angle = 0;
  }
  push();
  scale(0.9);
  translate(25, 0);
  mountains();
  firework();
  pop();
  fireworkcolors();
  push();
  translate(-20, 0);
  scale(0.67);
  trees();
  pop();
  
}
//got this from Talia's github
void mountains(){
   triangle(250, 350, 400, 200, 550, 400);
  triangle(0, 400, 200, 80, 344, 500);
}

//got this from Emily's github

void firework() {
  beginShape();
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  translate(width / 2-50, height / 6);
  rotate(radians(30));
  translate(-width / 2+50, -height / 6);
  arc(width / 2, height / 6, 100, 50, PI, PI + angle);
  endShape();
}
void fireworkcolors() {
    noFill();
    color(#FF2394);
    strokeWeight(5);
    stroke(r, g, b);
    r = random(255);
    g = random(255);
    b = random(255);
    push();
    firework();
    pop();

    push();
    translate(200, 200);
    firework();
    pop();

    push();
    translate(-200, 300);
    firework();
    pop();

}


//my function
void trees() {
   //trees
  push ();
  noStroke ();
  fill (#075422);
  triangle(80, 80, 120, 200, 40, 200); //tree 1
  triangle(80, 170, 130, 290, 30, 290);
  triangle(250, 50, 290, 180, 210, 180); //tree 2
  triangle(250, 140, 300, 270, 200, 270);
  triangle(395, 30, 435, 160, 355, 160); //tree 3
  triangle(395, 120, 445, 250, 345, 250);
  triangle(550, 50, 590, 180, 510, 180); // tree 4
  triangle(550, 140, 600, 270, 500, 270);
  triangle(720, 80, 760, 200, 680, 200); //tree 5
  triangle(720, 170, 770, 290, 670, 290);
  fill (#4B2810);
  rect(60, 290, 40, 60); //tree 1
  rect(230, 270, 40, 30); //tree 2
  rect(375, 250, 40, 30); //tree 3
  rect(530, 270, 40, 30); //tree 4
  rect(700, 290, 40, 60); //tree 5
  pop ();
}
