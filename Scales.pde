void setup(){
 size(500,500,P3D); 
}
void draw(){
  background(60, 55, 191);
  ambientLight(0,0,255);
  pointLight(255, 0, 0, 200, -100, 400);
  pointLight(0, 255, 0, 400, height/2, 300);
  shininess(5.0); 
  camera(width/2, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  fill(115, 57, 191);
  for(int j = 700; j>=-300; j-=30){
    for(int i = -200; i <= 700; i+=50){
      scale(i, j);
    }
    for(int i = -200; i <= 700; i+=50){
      scale(i+25, j-15);
    }
  }
}

void scale(int x, int y){
  beginShape();
  bezier(x,y,0,x+15,y+75,30,x+35,y+75,30,x+50,y,0);
  endShape();
}
