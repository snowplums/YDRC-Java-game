ArrayList<Sprite> bombs;
Sprite player;


void setup() {
  imageMode(CENTER);
  size (800, 600);
  
  player = new Sprite("steve.jpg", 1.0, width/2, height/2);
  player.change_x = 0;
  player.change_y = 0;
  
  bombs = new ArrayList<Sprite>();
  
  
  
  
  for(int i = 0; i < 20; i++){
     
    //In this for loop, use the Sprite constructor with 4 parameters to create Sprite objects.
    //For the x value, create a random number from 0 to 800. 
    //For the y value, type "-30 * i" so that the bombs are spaced evenly vertically.
    
    bombs.add(new Sprite("bomb.png", 1.0, (int)(Math.random() * 800), -30 * i));
    
    
    //After add a new sprite, get the Sprite you just created, and set the "change_y" variable to 5
     bombs.get(i).change_y = 5;
  }

}

void draw() {
  background(255);
  //background(255, 255, 255);
  player.display();
  player.update();
  
  for(int i = 0; i < bombs.size(); i++){
    bombs.get(i).display();
    bombs.get(i).update();
    
    
    //Write an if statement that checks if the "center_y" variable of Sprite is greater than 600, 
    //If "center_y" is greater than 600, set the bomb to a new Sprite using the constructor with 4 parameters
    //For the x value, create a random number from 0 to 800.
    //For the y value, put 0. 
    
    //Once again, set the "change_y" variable to 5
    if(bombs.get(i).center_y >= 600){
      bombs.set(i, new Sprite("bomb.png", 1.0, (int)(Math.random() * 800), 0));
      bombs.get(i).change_y = 5;
    }
    
    
    //Write an if statement that calls the collides() function and checks if the bomb and player have collided
    //If true, call the gameOver() function
    
    if(collides(bombs.get(i), player)){
      gameOver();
    }
    
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
