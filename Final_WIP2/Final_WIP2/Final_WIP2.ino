const int LED1 = 13;
const int LED2 = 12;
const int LED3 = 11;
const int LED4 = 10;
const int LED5 = 9;
const int LED6 = 8;
const int BUZZER = 5; //buzzer to arduino pin 5
int val = 0; //tracks incoming value from Serial port  
int frequency=0; //tracks value to send to piezo
volatile int State;

void setup() {
  pinMode(BUZZER, OUTPUT); 
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  pinMode(LED6, OUTPUT);
  Serial.begin (9600); //start serial communication at 9600 baud
  pinMode(2, INPUT);
}

void loop() {
  if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
    delay (10);
  }
    frequency = map (val, 0, 255, 100, 1500);
    //StateReader
    if(val == 10){State = 0;}
    else if(val == 20) {State = 1;}
    else if(val == 30) {State = 2;}
    else if(val == 40) {State = 3;}
    else if(val == 50) {State = 4;}
    else if(val == 60) {State = 5;}
    else if(val <= 79) {State = 6;}
    else if(val <= 119){State = 7;}
    else if(val <= 149){State = 8;}
    else if(val <= 179){State = 9;}
    else if(val <= 200){State = 10;}
    
    //Piezo and LED changes
    if(State == 1){
      tone(BUZZER, 55.00, 150);
      delay(160);
      tone(BUZZER, 77.78, 200);
      delay(210);
      tone(BUZZER, 207.65, 180);
      delay(190);
      tone(BUZZER, 440.00, 400);
      delay(410);
      tone(BUZZER, 123.47, 300);
      delay(310);
    }
    if(State == 2){
      tone(BUZZER, 293.665, 250);
      delay(260);
      tone(BUZZER, 41.20, 100);
      delay(110);
      tone(BUZZER, 293.665, 250);
      delay(260);
      tone(BUZZER, 61.74, 250);
      delay(260);
      tone(BUZZER, 49.00, 275);
      delay(285);
    }
    if(State == 3){
      tone(BUZZER, 19.45, 300);
      delay(310);
      tone(BUZZER, 61.74, 250);
      delay(260);
      tone(BUZZER, 293.665, 250);
      delay(260);
      tone(BUZZER, 41.20, 100);
      delay(110);
      tone(BUZZER, 43.65, 100);
      delay(110);
    }
    if(State == 4){
      tone(BUZZER, 41.20, 100);
      delay(110);
      tone(BUZZER, 293.665, 250);
      delay(260);
      tone(BUZZER, 61.74, 250);
      delay(260);
      tone(BUZZER, 293.665, 250);
      delay(260);
      tone(BUZZER, 130.81, 250);
      delay(260);
    }
    if(State == 5){
      tone(BUZZER, 1108.73, 500);
      delay(260);
      tone(BUZZER, 440.00, 250);
      delay(110);
      tone(BUZZER, 659.25, 300);
      delay(260);
      tone(BUZZER, 830.61, 275);
      delay(260);
      tone(BUZZER, 1046.50, 325);
      delay(285);
    }
    if(State == 6){
      tone(BUZZER, 293.665, 250);//d
      delay(260);
      tone(BUZZER, 293.665, 250);
      delay(260);
      tone(BUZZER, 2349.32, 500);//d7
      delay(510);
      tone(BUZZER, 55.00 , 500);//a
      delay(510);
      tone(BUZZER, 415.305 , 500);//g#
      delay(510);
    }
    if(State == 7){
      tone(BUZZER, 415.305 , 500);//g
      delay(510);
      tone(BUZZER, 43.65 , 500);//f
      delay(510);
      tone(BUZZER, 293.665, 250);
      delay(260);
      tone(BUZZER, 43.65 , 250);
      delay(260);
      tone(BUZZER, 415.305 , 250);
      delay(260);
    }
    if(State == 8){
      tone(BUZZER, 261.63 , 250);
      delay(260);
      tone(BUZZER, 261.63 , 250);
      delay(260);
      tone(BUZZER, 2349.32, 500);
      delay(260);
      tone(BUZZER, 55.00 , 500);
      delay(510);
      tone(BUZZER, 415.305 , 500);//g#
      delay(510);
    }
    if(State == 9){
      tone(BUZZER, 415.305 , 500);//g
      delay(510);
      tone(BUZZER, 43.65 , 500);//f
      delay(260);
      tone(BUZZER, 293.665, 250);
      delay(260);
      tone(BUZZER, 43.65 , 250);
      delay(260);
      tone(BUZZER, 415.305 , 250);
      delay(260);
    }
    if(State == 10){
      tone(BUZZER, 61.74 , 250);
      delay(260);
      tone(BUZZER, 61.74 , 250);
      delay(260);
      tone(BUZZER, 2349.32, 500);
      delay(260);
      tone(BUZZER, 55.00 , 500);
      delay(260);
      tone(BUZZER, 415.305, 500);
      delay(510);
    }
}

void mousePressed()
{
  if(val == 10){State == 0;}
  else if(val == 20){State == 1;}
  else if(val == 30){State == 2;}
  else if(val == 40){State == 3;}
  else if(val == 50){State == 4;}
  else if(val == 60){State == 5;}
  else if(val <= 79){State == 6;}
  else if(val <= 119){State = 7;}
  else if(val <= 149){State = 8;}
  else if(val <= 179){State = 9;}
  else if(val <= 200){State = 10;}
}
