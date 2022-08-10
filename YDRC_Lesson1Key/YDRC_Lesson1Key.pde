Sprite player;


void setup() {
  imageMode(CENTER);
  size (800, 600);
  
  player = new Sprite("steve.jpg", 1.0, width/2, height/2);
  player.change_x = 0;
  player.change_y = 0;
  
  }

void draw() {
  background(255);
  //background(255, 255, 255);
  player.display();
  player.update();
  }
  
  
  //Called whenever a key is pressed.
  //The variable "keyCode" is which key is pressed down. 
  //We need to check if "keyCode" is equal to "UP", "DOWN", "LEFT", or "RIGHT".
  //When we find which "keyCode" is, we need to add or subtract 5 from the "player.change_x" or "player.change_y" to move the player. 
void keyPressed() {
  if(keyCode == UP){
    player.change_y = -5;
  }else if(keyCode == DOWN){
    player.change_y = 5;
  }else if(keyCode == LEFT){
    player.change_x = -5;
  }else if(keyCode == RIGHT){
    player.change_x = 5;
  }
  
}

  //Similarily to keyPressed, keyReleased is called whenever a key is released.
  //The variable "keyCode" is which key was just released
  //We need to set the varables "player.change_x" and "player.change_y" to 0 when the keys are released
void keyReleased() {
  if(keyCode == UP){
    player.change_y = 0;
  }else if(keyCode == DOWN){
    player.change_y = 0;
  }else if(keyCode == LEFT){
    player.change_x = 0;
  }else if(keyCode == RIGHT){
    player.change_x = 0;
  }
}
