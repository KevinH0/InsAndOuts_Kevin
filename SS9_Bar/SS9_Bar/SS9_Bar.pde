import processing.serial.*;

Serial myPort;
int val=0;
int mono = 0;
int buttonState = 0;


void setup() {
  size(310, 310);
  printArray(Serial.list());
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  if ( myPort.available() > 0) {
    val = myPort.read();
  }
  background(255);
  fill (mono);
  ellipse (val+25, 50, 50, 50);
  if(val >= 30 && val <= 60)
  {
    mono = 30;
  }else if(val >= 61 && val <= 100)
  {
    mono = 60;
  }else if(val >= 101 && val <= 150)
  {
    mono = 90;
  }else if(val >= 151 && val <= 210)
  {
    mono = 120;
  }else if(val >= 211 && val <= 255)
  {
    mono = 150;
  }
  
  if (buttonState == 0 )
  {
    myPort.write(0);
  }else if(buttonState == 1)
  {
    myPort.write(1);
  }else
  {
    myPort.write(2);
  }

  fill(32,32,64);
  ellipse(60, 400-val*1.2, 50, 50);
  fill(64,32,64);
  ellipse(140, 360-val*1.1, 40, 40);
  fill(32,32,0);
  ellipse(280, 420-val*1.3, 30, 30);
  fill(64,64,0);
  ellipse(150, 430-val*1.5, 35, 35);
  fill(0,0,32);
  ellipse(120, 400-val, 50, 50);
  fill(64,32,0);
  ellipse(250, 415-val*1.7, 50, 50);
  fill(32,64,0);
  ellipse(300, 405-val*1.2, 50, 50);
}
void mousePressed(){
  if (buttonState == 0){
    buttonState++;
  }else if(buttonState > 0){
    buttonState--;
  }
}

void keyPressed(){
  if(buttonState < 2){
    buttonState++;
  }else
  {
    buttonState--;
  }
}
