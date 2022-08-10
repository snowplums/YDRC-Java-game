

public class Sprite{
  PImage image;
  float center_x, center_y;
  float change_x, change_y;
  float w, h; 
  
  //Constructor for the Sprite class
  //Don't worry about this for now
  public Sprite(String filename, float scale, float x, float y){
    image = loadImage(filename);
    w = image.width * scale;
    h = image.height * scale;
    center_x = x;
    center_y = y;
    change_x = 0;
    change_y = 0;
  }
  
  
  public Sprite(String filename, float scale){
    this(filename, scale, (float)width/2, (float)height/2);
  }
  
  public void display(){
    image(image, center_x, center_y, w, h);
  }






  //Changes the Sprite's position every frame

  public void update(){
    
    
    //We need to add change_x to center_x, and add change_y to center_y
    
  center_x += change_x;
  center_y += change_y;
  

  }
}
