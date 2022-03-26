//Grid, Kevin Huang - Press any button
color circ = color(0, 0, 155);
int TLSqx = 0;
int TLSqy = 0;
int Rsize = 50;
int TRSqx = 1370;
int TRSqy = 0;
float circlerx = 250;
float circlery = 250;
void setup(){
  size(1420,1080);
}
void draw(){
  if(mouseX < width/3){
    background(0);
  }else if(mouseX < 2*width/3){
    background(155);
  }else{
    background(255);
  }
  for(int i = 0; i < 1420; i+=10){
    line(i, 0, i, 1080);
  }
  for(int i = 10; i < 1080; i+=30f){
    line(0, i, 1420, i);
  }
  fill(50);
  rect(TLSqx, TLSqy, Rsize, Rsize);
  rect(TRSqx, TRSqy, Rsize, Rsize);
  ellipseMode(CENTER);
  fill(circ);
  ellipse(710, 540, circlerx, circlery);
}

void keyPressed(){
  TLSqx += 2f;
  TLSqy += 2f;
  TRSqx -= 2f;
  TRSqy += 2f;
  if(TLSqy > 1080){
    noLoop();
  }
  else if(TRSqx <= 750){
    circlerx = circlerx + random(0.6);
    circlery = circlerx;
  }else{
    fill(155);
    arc(710,415, 250, 250,PI,TWO_PI);
  }
}
void mousePressed(){
  circlerx += 5;
  circlery += 5;
}
