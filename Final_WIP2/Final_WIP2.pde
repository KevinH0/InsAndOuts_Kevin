import processing.serial.*;
Serial myPort;

int val=0;
int circle = 200;
float Red = random(256);
float Green = random(256);
float Blue = random(256);

randomizer RandomValue;//Taking from class randomizer()
float randomNum;

void setup() {
  size(1000, 1000); 
  textSize (44);
  textAlign (CENTER, CENTER);
  RandomValue = new randomizer();//Initializing randomizer() to RandomValue

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[1]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

void draw() {
  background (255);
  fill (Red, Green, Blue);
  //Centerpiece button
  ellipse(width/2, height/2, circle, circle);
  text ("Click the buttons", width/2, height/2);
  //Topside Buttons
  rect(100, 100, 100, 100);
  rect(800, 100, 100, 100);
  rect(300, 100, 400, 100);
  //Botside Buttons
  rect(100, 800, 100, 100);
  rect(800, 800, 100, 100);
  rect(300, 800, 400, 100);
  

}

void mousePressed(){
  if(mouseX >= 100 && mouseX <= 200 && mouseY >= 100 && mouseY <= 200){
    val = 10;
  }
  if(mouseX >= 300 && mouseX <= 700 && mouseY >= 100 && mouseY <= 200){
    val = 20;
  }
  if(mouseX >= 800 && mouseX <= 900 && mouseY >= 100 && mouseY <= 200){
    val = 30;
  }
  if(mouseX >= 100 && mouseX <= 200 && mouseY >= 800 && mouseY <= 900){
    val = 40;
  }
  if(mouseX >= 300 && mouseX <= 700 && mouseY >= 800 && mouseY <= 900){
    val = 50;
  }
  if(mouseX >= 800 && mouseX <= 900 && mouseY >= 800 && mouseY <= 900){
    val = 60;
  }
  if(dist(mouseX, mouseY, width/2, height/2) < 100){//Circle mouse pressed
    RandomValue.RandomNumber();//Random value and color fed everytime the button is pressed
    RandomValue.RandomColor();
  }
    myPort.write(val); //write to Serial
    println(val);  //print to console
    
}
class randomizer{
  //Randomizes a value between 70-200 to send to Arduino
  public void RandomNumber(){
    randomNum = random(70, 200);
    val = int(randomNum);
  }
  //Randomizes the RGB
  public void RandomColor(){
    Red = random(256);
    Green = random(256);
    Blue = random(256);
  }
}
/*
Thanks to Odermonicon in the processing discourse for having a circle button.
https://discourse.processing.org/t/how-do-you-turn-an-ellipse-into-a-button-and-when-clicked-it-would-show-the-data-on-the-same-screen/19366/7
*/
