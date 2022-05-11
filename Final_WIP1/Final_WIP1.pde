import processing.serial.*;
Serial myPort;

int val=0;
int circle = 200;
void setup() {
  size(1000, 1000); 
  textSize (44);
  textAlign (CENTER, CENTER);

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[1]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

void draw() {
  background (255);
  fill (#536878);
  //Centerpiece
  ellipse(width/2, height/2, circle, circle);
  text ("Click the buttons", width/2, height/2);
  //Topside Buttons
  rect(100, 100,100,100);
  rect(800, 100, 100,100);
  rect(300, 100, 400, 100);
  //Botside Buttons
  rect(100, 800, 100, 100);
  rect(800, 800, 100, 100);
  rect(300, 800, 400, 100);
  
  //val= int (map (mouseX, 0, width, 0, 255)); 
}

void mousePressed(){
  if(mouseX >= 100 && mouseX <= 400 && mouseY >=100 && mouseY <= 400){
    val = 10;
  }
  if(dist(mouseX, mouseY, width/2, height/2) < 100){
    println("YES");
  }
    myPort.write(val); //write to Serial
    println(val);  //print to console
    
}

/*
Thanks to Odermonicon in the processing discourse for having a circle button.
https://discourse.processing.org/t/how-do-you-turn-an-ellipse-into-a-button-and-when-clicked-it-would-show-the-data-on-the-same-screen/19366/7
*/
