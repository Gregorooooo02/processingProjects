public class Sun {
  PShape sun;
  color fillColor;
  float radius;
  float theta;
  float haloRadius = 130;
  float haloAlpha = 100;
  
  color haloColor = color(#B3FFFC, haloAlpha);
  
  
  public Sun(float r, color col, float theta) {
    this.radius = r;
    this.fillColor = col;
    this.theta = theta;
    this.sun = createShape(SPHERE, radius);
  }
  
  public void display() {
    lights();
    sun.setFill(fillColor);
    rotateY(theta * .2f);
    lightSpecular(194, 252, 255);
    pointLight(194, 252, 255, 0, 0, 0); // Punktowe światło z gwiazdy
    shininess(2.0);
    specular(194, 252, 255);
    emissive(194, 252, 255);
    shape(sun);
    
    pushMatrix();
      fill(haloColor);
      sphere(haloRadius);
      shininess(3.0);
    popMatrix();
    
    theta += .01f;
  }
}
