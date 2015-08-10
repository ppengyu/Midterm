PImage img;
PImage tardis;
int currentImgSize;
int currentRadius;
int constantRadius = 599;
int winSize = 2000;
int imgSize= 200;
float ratio;
float a = 0.0;

float c;

void setup(){
  img = loadImage("universe.jpg");
  tardis = loadImage("Tardis.png");

}

void draw(){
  
    size(800,500);
  background(img);
  
   currentRadius = int(sqrt((mouseX-winSize/100)*(mouseX - winSize/100) + (mouseY - winSize/2)*(mouseY-winSize/2)));
  ratio = imgSize * currentRadius/constantRadius;
  currentImgSize = imgSize - int(ratio);
  
  a = a+0.03;

  
  translate(mouseX,mouseY);
  rotate(a);
  
//  scale (10*b);
//  if (b<0){
//  b=1.3;
//  }
  
  
   imageMode(CENTER);
   image(tardis, mouseX,mouseY, 2*currentImgSize, 3*currentImgSize);
   
   
   println(ratio);
 
}
