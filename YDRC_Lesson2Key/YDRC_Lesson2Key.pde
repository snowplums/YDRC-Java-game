ArrayList<Sprite> bombs;
Sprite player;
Sprite bomb;

void setup() {
  imageMode(CENTER);
  size (800, 600);
  
  player = new Sprite("steve.jpg", 1.0);
  player.change_x = 0;
  player.change_y = 0;
  
  
  bomb = new Sprite("bomb.png", 1.0, 600, 200);
  
}

void draw() {
  background(255);  
  //background(255, 255, 255);
  player.display();
  player.update();
  
  
  bomb.display();
  bomb.update();
  
  
  // Write an if statements so that if the bomb and player collide, it calls the function gameOver()
  
  if(collides(bomb, player)){
    gameOver();
  }
  
  
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

  //Write the collides function
  //The function should return a boolean (true if two sprites are touching, and false if not)
  //The parameters should be two sprites. 
  
  
  //The code should find if the absolute value between the center_x variables of both Sprites is less than 25, AND if the absolute value between the center_y variables of both Sprites is less than 45. 
  //If the above is true, then return true. Else, return false. 
  //To find absolute value, use abs()
  
 
  
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
