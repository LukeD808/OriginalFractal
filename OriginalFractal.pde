public void setup(){
  background(0);
  size(500,500, P3D);
  

  noStroke();
}
public void draw(){
  //lights();
  pointLight(51, 102, 126, 140, 160, 144);
  myFractal(250,250,100); 
}

public void myFractal(int x, int y, int siz){
  pushMatrix();
  translate(x,y,10);
  rotateX(0.5);
  rotateY(0.5);
  box(siz);
  popMatrix();
  if (siz > 10){
     myFractal(x,y-siz/2,siz/2);
     myFractal(x,y+siz/2,siz/2);
     myFractal(x-siz/2,y,siz/2);
     myFractal(x+siz/2,y,siz/2);
     
     myFractal(x-siz/2,y+siz/2,siz/2);
     myFractal(x+siz/2,y-siz/2,siz/2);
     
  }
}
