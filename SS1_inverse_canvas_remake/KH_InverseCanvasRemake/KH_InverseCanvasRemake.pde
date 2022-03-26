//Inverse Canvas by Kevin Huang
void setup(){
  size(1080, 720);
  background(255);
}
void draw(){
  strokeWeight(1);
  rectMode(CENTER);
  fill(100, 100, 155);
  rect(125, 125, 250, 250);
  fill(155);
  rect(130, 130, 175, 175);
  strokeWeight(2);
  triangle(60,75,125,195,200,75);
  line(60, 200, 195, 200);
  line(60, 200, 125, 75);
  line(125, 75, 195, 200);
}
 void keyPressed(){
   background(255);
 }
