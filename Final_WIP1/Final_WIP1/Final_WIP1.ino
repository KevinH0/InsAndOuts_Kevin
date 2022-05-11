const int BUZZER = 5; //buzzer to arduino pin 5
int val = 0; //tracks incoming value from Serial port  
int frequency=0; //tracks value to send to piezo
volatile int State;

void setup() {
  pinMode(BUZZER, OUTPUT); 
  Serial.begin (9600); //start serial communication at 9600 baud
  pinMode(2, INPUT);
  attachInterrupt(0, mousePressed, FALLING);
  attachInterrupt(0, mousePressed, noTone);
}

void loop() {
  if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
    delay (10);
  }
    frequency = map (val, 0, 255, 100, 1500);
    
    if(val == 10) {State = 0;}
    else if(val == 20){ State = 1;}
    
    if(State == 0){
      tone(BUZZER, 293.665, 250);//d
      delay(250);
      tone(BUZZER, 293.665, 250);
      delay(250);
      tone(BUZZER, 2349.32, 500);//d7
      delay(500);
      tone(BUZZER, 55.00 , 500);//a
      delay(500);
      tone(BUZZER, 415.305 , 500);//g#
      delay(500);
      tone(BUZZER, 415.305 , 500);//g
      delay(500);
      tone(BUZZER, 43.65 , 500);//f
      delay(500);
      tone(BUZZER, 293.665, 250);
      delay(250);
      tone(BUZZER, 43.65 , 250);
      delay(250);
      tone(BUZZER, 415.305 , 250);
      delay(250);
      tone(BUZZER, 261.63 , 250);
      delay(250);
      tone(BUZZER, 261.63 , 250);
      delay(250);
      tone(BUZZER, 2349.32, 500);
      delay(500);
      tone(BUZZER, 55.00 , 500);
      delay(500);
      tone(BUZZER, 415.305 , 500);//g#
      delay(500);
      tone(BUZZER, 415.305 , 500);//g
      delay(500);
      tone(BUZZER, 43.65 , 500);//f
      delay(500);/*
      tone(BUZZER, 293.665, 250);
      delay(250);
      tone(BUZZER, 43.65 , 250);
      delay(250);
      tone(BUZZER, 415.305 , 250);
      delay(250);
      tone(BUZZER, 61.74 , 250);
      delay(250);
      tone(BUZZER, 61.74 , 250);
      delay(250);
      tone(BUZZER, 2349.32, 500);
      delay(500);
      tone(BUZZER, 55.00 , 500);
      delay(500);*/
    }
    if(State == 1){
      /*tone(BUZZER, 293.665, 250);//d
      delay(250);
      tone(BUZZER, 293.665, 250);
      delay(250);
      tone(BUZZER, 2349.32, 500);//d7
      delay(500);
      tone(BUZZER, 55.00 , 500);//a
      delay(500);
      tone(BUZZER, 415.305 , 500);//g#
      delay(500);
      tone(BUZZER, 415.305 , 500);//g
      delay(500);
      tone(BUZZER, 43.65 , 500);//f
      delay(500);
      tone(BUZZER, 293.665, 250);
      delay(250);*/
      tone(BUZZER, 43.65 , 250);
      delay(250);
      tone(BUZZER, 415.305 , 250);
      delay(250);
      tone(BUZZER, 261.63 , 250);
      delay(250);
      tone(BUZZER, 261.63 , 250);
      delay(250);
      tone(BUZZER, 2349.32, 500);
      delay(500);
      tone(BUZZER, 55.00 , 500);
      delay(500);
      tone(BUZZER, 415.305 , 500);//g#
      delay(500);
      tone(BUZZER, 415.305 , 500);//g
      delay(500);
      tone(BUZZER, 43.65 , 500);//f
      delay(500);
      tone(BUZZER, 293.665, 250);
      delay(250);
      tone(BUZZER, 43.65 , 250);
      delay(250);
      tone(BUZZER, 415.305 , 250);
      delay(250);
      tone(BUZZER, 61.74 , 250);
      delay(250);
      tone(BUZZER, 61.74 , 250);
      delay(250);
      tone(BUZZER, 2349.32, 500);
      delay(500);
      tone(BUZZER, 55.00 , 500);
      delay(500);
    }
    
    }
    void mousePressed()
    {
      if(val == 10){
         State == 0;
      }
      else if(val == 20){
         State == 1;
      }
      else if(val == 30){
         State == 2;
      }
      else if(val == 40){
         State == 3;
      }
      else if(val == 50){
         State == 4;
      }
      else if(val == 60){
         State == 5;
      }
      else if(val == 70){
         State == 6;
      }
}
