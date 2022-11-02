/*
*
Hi! I'm Nara and I'm trying to draw two pandas that kind of resemble Mickey Mouse. 10/11
*/

void setup() {
size(900, 900);
background(#055002);
}

void draw() {
 
//face
fill(240, 234, 200);
ellipse(400, 200, 250, 225);

//eyes
fill(250, 250, 250);
ellipse(350, 150, 25, 50);
ellipse(450, 150, 25, 50);
fill(0, 0, 0);
ellipse(350, 165, 10, 20);
ellipse(450, 165, 10, 20);

//nose
fill(0, 0, 0);
ellipse(400, 200, 40, 25);

//ears
fill(0, 0, 0);
circle(300, 90, 75);
circle(500, 90, 75);

//smile
curve(300, 200, 350, 225, 450, 225, 500, 200);

//body
fill(0, 0, 0);
ellipse(400, 498, 300, 375);
fill(240, 234, 200);
ellipse(400, 500, 200, 275);

//arms
fill(0, 0, 0);
ellipse(250, 400, 50, 200);
ellipse(550, 400, 50, 200);
fill(240, 234, 200);
ellipse(250, 400, 25, 100);
ellipse(550, 400, 25, 100);


//feet
fill(0, 0, 0);
ellipse(325, 725, 100, 200);
ellipse(475, 725, 100, 200);
fill(240, 234, 200);
ellipse(325, 725, 50, 100);
ellipse(475, 725, 50, 100);

//baby panda

//face 
fill(240, 234, 200);
circle(700, 550, 100);

//eyes
fill(250, 250, 250);
ellipse(680, 525, 10, 20);
ellipse(720, 525, 10, 20);
fill(0, 0, 0);
ellipse(680, 530, 5, 10);
ellipse(720, 530, 5, 10);

//nose
fill(0, 0, 0);
ellipse(700, 550, 20, 10);

//ears
fill(0, 0, 0);
circle(650, 500, 50);
circle(750, 500, 50);

//body
fill(0, 0, 0);
ellipse(700, 660, 80, 130);
fill(240, 234, 200);
ellipse(700, 660, 50, 75);

//arms
fill(0, 0, 0);
ellipse(655, 630, 25, 75);
ellipse(745, 630, 25, 75);
fill(240, 234, 200);
ellipse(655, 630, 15, 45);
ellipse(745, 630, 15, 45);

//legs
fill(0, 0, 0);
ellipse(680, 750, 30, 75);
ellipse(720, 750, 30, 75);
fill(240, 234, 200);
ellipse(680, 750, 15, 37);
ellipse(720, 750, 15, 37);









}
