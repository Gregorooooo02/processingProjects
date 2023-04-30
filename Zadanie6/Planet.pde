public class Planet {
  PShape planet;
  float time;
  float velocity;
  float radius;
  float multi;
  color fillColor = 0;
  int shape;
  int rotationMode;
  PImage texture;
  
  public Planet(int rotation, int shape, float time, 
                float velocity, float radius, float multi, color col) {
    this.time = time;
    this.velocity = velocity;
    this.radius = radius;
    this.multi = multi;
    this.fillColor = col;
    this.shape = shape;
    this.rotationMode = rotation;
    this.planet = createShape(shape, radius);
  }
  
  public Planet(PShape planet, int rotation, float time, float velocity,
                float radius, float multi, color col) {
    this.planet = planet;
    this.time = time;
    this.velocity = velocity;
    this.radius = radius;
    this.multi = multi;
    this.fillColor = col;
    this.rotationMode = rotation;
  }
  
  public Planet(int rotation, int shape, float time, 
                float velocity, float radius, float multi, PImage tex) {
    this.time = time;
    this.velocity = velocity;
    this.radius = radius;
    this.multi = multi;
    this.texture = tex;
    this.shape = shape;
    this.rotationMode = rotation;
    this.planet = createShape(shape, radius);
  }
  
  public void display(int tX, int tY, int tZ) {
    if (fillColor == 0) {
      planet.setTexture(texture);
    } else {
      planet.setFill(fillColor);  
    }
    //planet.setFill(fillColor);
    switch(rotationMode) {
      case 1:
        rotateY(time * multi); 
        break;
      case 2:
        rotateX(time * multi);
        break;
      case 3:
        rotateZ(time * multi);
        break;
    }
    translate(tX, tY, tZ);
    specular(200, 100, 100);
    rotateY(time);
    shape(planet);
    
    time += velocity;
  } 
}
