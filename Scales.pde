void setup(){
 size(500,500,P3D); 
}
void draw(){
  background(60, 55, 191);
  camera(width/2, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  float r = 115;
  float b = 219;
  for(int j = 700; j>=-300; j-=30){
    for(int i = -200; i <= 700; i+=50){
      fill(r,57,b);
      r += 0.1;
      b += 20;
      scale(i, j);
    }
    for(int i = -200; i <= 700; i+=50){
      fill(r,57,b);
      r += 0.1;
      b += 20;
      scale(i+25, j-15);
    }
  }
}

void scale(int x, int y){
  beginShape();
  bezier(x,y,0,x+15,y+75,30,x+35,y+75,30,x+50,y,0);
  endShape();
}


