//Don't worry about this file for today


public class Sprite{
  PImage image;
  float center_x, center_y;
  float change_x, change_y;
  float w, h; 
  
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


  
  public void update(){
        
    if(center_x + change_x < 800 && center_x +  change_x >= -5){
       center_x += change_x;
    }
    
    if(center_y + change_y <= 605){
       center_y += change_y;
    }
    
    
  }
}
