public class Moon {
  PShape moon;
  float time;
  float velocity;
  float radius;
  float multi;
  color fillColor;
  int shape;
  int rotationMode;
  
  public Moon(int rotation, int shape, float time, 
                float velocity, float radius, float multi, color col) {
    this.time = time;
    this.velocity = velocity;
    this.radius = radius;
    this.multi = multi;
    this.fillColor = col;
    this.shape = shape;
    this.rotationMode = rotation;
    this.moon = createShape(shape, radius);
  }
  
  public Moon(PShape moon, int rotation, float time, float velocity,
                float radius, float multi, color col) {
    this.moon = moon;
    this.time = time;
    this.velocity = velocity;
    this.radius = radius;
    this.multi = multi;
    this.fillColor = col;
    this.rotationMode = rotation;
  }
  
  public void display(int tX, int tY, int tZ) {
    moon.setFill(fillColor);
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
    shape(moon);
    
    time += velocity;
  } 
}
