float thetaoff;
float hueoff;
float theta;
float hue_;

void setup(){
  size(600, 600);
  background(255);
  
  thetaoff = 0;
  hueoff = 10000;
  
  colorMode(HSB);
  
  
  smooth();
  
  rectMode(CENTER);
  for(int i = 0; i <= height; i += height/15){
   for(int j = 0; j <= width + width/10; j += width/300){
     theta = map(noise(thetaoff), 0, 1, 0, 360);
     theta = radians(theta);
     
     hue_ = map(noise(hueoff), 0, 1, 0, 255);
     hueoff += 0.001;
     fill(hue_, 200, 255);
     stroke(50);
     
     pushMatrix();
     translate(j, i);
     rotate(theta);
     
     rect(0, 0, 50, height/10);
     
     popMatrix();
     
     thetaoff += 10;
   } 
 
  }
  
}

void draw(){
  //noStroke();
  //ellipseMode(CENTER);
  //ellipse(width/2, height/2, 300, 300);
  
  
}

void keyPressed(){
  if(key == 's'){
   saveFrame(random(1, 1000000) + ".png"); 
  }
}
