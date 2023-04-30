public class Spaceship {
  // Statek
  PShape shape;
  PVector position;
  PImage texture;
  float velocity;
  float theta = 0.f;
  boolean x_forward, x_back;
  boolean y_forward, y_back;
  boolean z_forward, z_back;
  
  // Pocisk
  PVector bulletPos;
  float bulletVelocity = 1f;
  
  public Spaceship(PImage text, float v) {
    position = PVector.random3D();
    this.texture = text;
    this.velocity = v;
    this.shape = createShape(SPHERE, 15);
  }
  
  public float getPositionX() {
    return position.x;
  }
  
  public float getPositionY() {
    return position.y;
  }
  
  public float getPositionZ() {
    return position.z;
  }
  
  public void getKey(char keyChar) {
    switch(keyChar) {
      case 'W':
        z_back = true;
        break;
      case 'S':
        z_forward = true;
        break;
      case 'A':
        x_back = true;
        break;
      case 'D':
        x_forward = true;
        break;
      case ',':
        y_back = true;
        break;
      case '.':
        y_forward = true;
        break;
    }
  }
  
  public void endKey(char keyChar) {
    switch(keyChar) {
      case 'W':
        z_back = false;
        break;
      case 'S':
        z_forward = false;
        break;
      case 'A':
        x_back = false;
        break;
      case 'D':
        x_forward = false;
        break;
      case ',':
        y_back = false;
        break;
      case '.':
        y_forward = false;
        break;
    }
  }
  
  private void shipController() {
    if (z_forward) {
      position.z += velocity;
    }
    else if (z_back) {
      position.z -= velocity;
    }
    
    if (x_forward) {
      position.x += velocity;
    }
    else if (x_back) {
      position.x -= velocity;
    }
    
    if (y_forward) {
      position.y += velocity;
    }
    else if (y_back) {
      position.y -= velocity;
    }
  }
  
  public void display() {
    shipController();
    
    translate(position.x, position.y, position.z + 400);
    rotateY(theta);
    shape.setTexture(texture);
    shape(shape);
    
    theta += .01f;
  }
}
