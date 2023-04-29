public class Spaceship {
  PVector position;
  PImage texture;
  float velocity;
  boolean x_forward, x_back;
  boolean y_forward, y_back;
  boolean z_forward, z_back;
  
  public Spaceship(PImage text, float v) {
    position = PVector.random3D();
    this.texture = text;
    this.velocity = v;
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
        z_forward = true;
        break;
      case 'S':
        z_back = true;
        break;
      case 'A':
        x_back = true;
        break;
      case 'D':
        x_forward = true;
        break;
      case ',':
        y_forward = true;
        break;
      case '.':
        y_back = true;
        break;
    }
  }
  
  public void geyKeyReleased(char keyChar) {
    switch(keyChar) {
            case 'W':
        z_forward = false;
        break;
      case 'S':
        z_back = false;
        break;
      case 'A':
        x_back = false;
        break;
      case 'D':
        x_forward = false;
        break;
      case ',':
        y_forward = false;
        break;
      case '.':
        y_back = false;
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
    else if (y_back {
      position.y -= velocity;
    }
  }
  
  public void display() {
    shipController();
  }
}
