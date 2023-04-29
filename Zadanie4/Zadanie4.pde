// Kąt obrotu wokół gwiazdy i planet
float theta = 0;

PImage background;  // Tło

void setup() {
  size(1650, 950);
  background(0);
  background = loadImage("gwiazdy.png");
}

void drawOrbit(int xy, int r) {
  noFill();
  stroke(#FFFFFF);
  tint(255, 126);
  circle(xy, xy, r);
  noStroke();
}

void drawCircle(int steps, color col) {
  fill(col);
  beginShape();
  for (int i = 0; i < steps; ++i)
    vertex(cos(TWO_PI * (float)i / float(steps)), sin(TWO_PI * (float)i / float(steps)));
  endShape();
}

void draw() {
  background(0);
  image(background, 0, 0);
  
  // Przesunięcie środka układu do współrzędnych 400, 400
  translate(width/2, height/2);
  drawOrbit(0, 280);
  drawOrbit(0, 480);
  drawOrbit(0, 720);
  drawOrbit(0, 980);
  drawOrbit(0, 1380);
  
  // Gwiazda
  pushMatrix();
    scale(80);
    drawCircle(32, #B3FFFC);
  popMatrix();
  
  // Planeta #1
  pushMatrix();
    rotate(theta/2);
    translate(140, 0);
    scale(15);
    drawCircle(16, #A3261D);
  
  // Planeta #1 - Księżyc
  pushMatrix();
    rotate(-theta);
    translate(2f, 0);
    scale(.5f);
    drawCircle(6, #969696);
  popMatrix();
  
  popMatrix();
  
  // Planeta #2
  pushMatrix();
    rotate(theta);
    translate(240, 0);
    scale(30);
    drawCircle(16, #dbe300);
  
  // Planeta #2 - Księżyc #1
  pushMatrix();
    rotate(theta * 3f);
    translate(1.5f, 0);
    scale(.3f);
    drawCircle(8, #FFFFFF);
  popMatrix();
  
  // Planeta #2 - Księżyc #2
  pushMatrix();
    rotate(theta * .2f);
    translate(2.1f, 0);
    scale(.2f);
    drawCircle(12, #dbdbdb);
  popMatrix();
  
  popMatrix();
  
  // Planeta #3
  pushMatrix();
    rotate(theta * .4f);
    translate(360, 0);
    scale(35);
    drawCircle(16, #0905f5);
  
  // Planeta #3 - Księżyc #1
  pushMatrix();
    rotate(-theta * .5f);
    translate(1.3f, 0);
    scale(.2f);
    drawCircle(12, #9c9c9c);
  popMatrix();
  
  // Planeta #3 - Księżyc #2
  pushMatrix();
    rotate(-theta * 3f);
    translate(1.7f, 0);
    scale(.1f);
    drawCircle(12, #dedede);
  popMatrix();
  
  popMatrix();
  
  // Planeta #4
  pushMatrix();
    rotate(-theta * .1f);
    translate(490, 0);
    scale(10);
    drawCircle(16, #10b02d);
  
  // Planeta #4 - Księżyc #1
  pushMatrix();
    rotate(theta);
    translate(1.7f, 0);
    scale(.4f);
    drawCircle(10, #7a786c);
  popMatrix();
  
  // Planeta #4 - Księżyc #2
  pushMatrix();
    rotate(-theta * 1.5f);
    translate(3f, 0);
    scale(.7f);
    drawCircle(8, #cfcaae);
  popMatrix();
  
  popMatrix();
  
  // Planeta #5
  pushMatrix();
    rotate(theta);
    translate(690, 0);
    scale(30);
    drawCircle(16, #4b2396);
    
  // Planeta #5 - Księżyc #1
  pushMatrix();
    rotate(theta);
    translate(1.5f, 0);
    scale(.2f);
    drawCircle(8, #fc928b);
  popMatrix();
  
  // Planeta #5 - Księżyc #2
  pushMatrix();
    rotate(-theta * .5f);
    translate(2.3f, 0);
    scale(.5f);
    drawCircle(8, #b3a89a);
  popMatrix();
  
  // Planeta #5 - Księżyc #3
  pushMatrix();
    rotate(theta * 1.5f);
    translate(3.1f, 0);
    scale(.15f);
    drawCircle(10, #c5e3b8);
  popMatrix();
  
  popMatrix();
  
  theta += .01f;
}
  
