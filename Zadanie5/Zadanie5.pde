import peasy.*;

PeasyCam cam;

// Kształt imbryka
PShape teapot;
PShape shape;
PImage texture;

Sun sun;

Planet planet_1;
Planet planet_2;
Planet planet_3;
Planet planet_4;
Planet planet_5;

Moon moon_1;
Moon moon_2;
Moon moon_3;
Moon moon_4;
Moon moon_5;
Moon moon_6;
Moon moon_7;
Moon moon_8;
Moon moon_9;
Moon moon_10;

float velocity = .01f;
float time = 0.f;
float theta = 0.f;

void setup() {
  size(1650, 980, P3D);
  background(0);
  noStroke();
  
  teapot = loadShape("teapot.obj");
  texture = loadImage("jupiter.png");
  
  sun = new Sun(120, #B3FFFC, theta);
  
  planet_1 = new Planet(1, SPHERE, time, velocity, 20, 2.f, #487844);
  planet_2 = new Planet(teapot, 2, time, velocity, 50, -1.f, #731180);
  planet_3 = new Planet(1, SPHERE, time, velocity, 60, 3.f, texture);
  planet_4 = new Planet(1, SPHERE, time, velocity, 15, 2.5f, #8a521a);
  planet_5 = new Planet(1, BOX, time, velocity, 80, -1.5f, #8a221a);
  
  moon_1 = new Moon(2, SPHERE, time, velocity, 10, 1.5f, #a1c2aa);
  moon_2 = new Moon(1, BOX, time, velocity, 2f, 2.f, #9ed2f0);
  moon_3 = new Moon(2, SPHERE, time, velocity, 0.5f, 1f, #ff8aaf);
  moon_4 = new Moon(1, SPHERE, time, velocity, 5, -0.7f, #fae505);
  moon_5 = new Moon(2, SPHERE, time, velocity, 7, -4f, #a14d2a);
  moon_6 = new Moon(2, SPHERE, time, velocity, 3, 1f, #6ba12a);
  moon_7 = new Moon(1, BOX, time, velocity, 20, -2f, #7c8a7e);
  moon_8 = new Moon(2, BOX, time, velocity, 25, 4f, #0374ff);
  moon_9 = new Moon(1, SPHERE, time, velocity, 20, 3.2f, #03ff28);
  moon_10 = new Moon(2, SPHERE, time, velocity, 25, 2.2f, #4203ff);
  
  cam = new PeasyCam(this, 825, 490, 0, 2000);
}

void draw() {
  background(0);
  ambientLight(30, 30, 30);
  
  // Przesunięcie ukladu do 825, 490, 0
  translate(width/2, height/2, 0);
  noFill();
  
  // Gwiazda
  pushMatrix();
    sun.display();
  popMatrix();
  
  // Planeta #1
  pushMatrix();
    planet_1.display(0, 0, 200);
    
    // Księżyc #1
    pushMatrix();
      moon_1.display(0, 0, 40);
    popMatrix();
  popMatrix();
  
  // Planeta #2
  pushMatrix();
    scale(30f);
    planet_2.display(0, 0, 12);
    
    // Księżyc #2
    pushMatrix();
      moon_2.display(0, 0, 5);
    popMatrix();
    // Księżyc #3
    pushMatrix();
      moon_3.display(0, 0, 3);
    popMatrix();
  popMatrix();
  
  // Planeta #3
  pushMatrix();
    planet_3.display(0, 0, 600);
    spotLight(255, 0, 0, 0, 0, 0, 20, 0, 0, 45, 1); // Reflektor z planety
    
    // Księżyc #4
    pushMatrix();
      moon_4.display(0, 0, 100);
    popMatrix();
    // Księżyc #5
    pushMatrix();
      moon_5.display(0, 0, 80);
    popMatrix();
    // Księżyc #6
    pushMatrix();
      moon_6.display(0, 0, 90);
    popMatrix();
  popMatrix();
  
  // Planeta #4
  pushMatrix();
    planet_4.display(0, 0, 800);
    
    // Księżyc #7
    pushMatrix();
      moon_7.display(0, 0, 40);
    popMatrix();
    // Księżyc #8
    pushMatrix();
      moon_8.display(0, 0, 70);
    popMatrix();
  popMatrix();
  
  // Planeta #5
  pushMatrix();
    planet_5.display(0, 0, 1100);
    
    // Księżyc #9
    pushMatrix();
      moon_9.display(0, 0, 110);
    popMatrix();
    // Księżyc #10
    pushMatrix();
      moon_10.display(0, 0, 150);
    popMatrix();
  popMatrix();
}
