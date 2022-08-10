Sprite player;

//Make an array or ArrayList of type sprite and name it "bombs"




void setup() {
  imageMode(CENTER);
  size (800, 600);
  
  player = new Sprite("steve.jpg", 1.0, width/2, height/2);
  player.change_x = 0;
  player.change_y = 0;
  
  //Use a for loop to add 20 Sprite objects to the array
  //There are two constructors. We're going to use the one with the two parameters
  //The first parameter should be "bomb.png"
  //The second parameter should be the scale, lets just use 1.0
  
}

void draw() {
  background(255);
  //background(255, 255, 255);
  player.display();
  player.update();
   
  //In here, make a for loop that runs through all elements of the array
  //For each Sprite entity, call .display() and .update()
  
  
  
  
}

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


boolean collides(Sprite s1, Sprite s2){
  if(abs(s1.center_x - s2.center_x) < 25 && abs(s1.center_y - s2.center_y) < 45){
    return true;
  }
  return false;
}


void gameOver(){
 setup();
    player.center_x = width/2;
    player.center_y = height/2;
}
