

public class Sprite{
  PImage image;
  float center_x, center_y;
  float change_x, change_y;
  float w, h; 
  
  public Sprite(String filename, float scale, float x, float y){
    // inititalize variables in this constructor.
    image = loadImage(filename);
    w = image.width * scale;
    h = image.height * scale;
    center_x = x;
    center_y = y;
    change_x = 0;
    change_y = 0;
  }
  
  
  public Sprite(String filename, float scale){
    // use this() to call the previous constructor.
    this(filename, scale, (float)width/2, (float)height/2);

  }
  
  public void display(){
    // use image(image_file, x, y, width_image, height_image) to draw image.
    image(image, center_x, center_y, w, h);
  }


  //How can we make it so that the sprites don't leave the screen?
  //Hint: only add change_x to center_x when center_x is in bounds, and only add change_y to center_y when center_y is in bounds
  
  public void update(){
        
    if(center_x + change_x < 800 && center_x +  change_x >= -5){
       center_x += change_x;
    }
    
    if(center_y + change_y <= 605){
       center_y += change_y;
    }
    
    
  }
}
