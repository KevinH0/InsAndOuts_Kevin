byte val;

const int LED1 = 11;
const int LED2 = 10;
const int potPin = A0;  //potentiometer middle pin
int reading = 0; // to track potentiometer reading


void setup() {
  pinMode (LED1, OUTPUT);
  pinMode (LED2, OUTPUT);
  //note: no need to initialize analog inputs as those pins can only be inputs
  
  Serial.begin(9600);  // initialize serial communication at 9600 bits per second
}

void loop() {
  if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
  }
  if (val == 0) { // If 0 received
    digitalWrite(LED1, LOW); // turn LEDs off
    digitalWrite(LED2, LOW);
  }
  else if (val == 1) { // If 1 received
    digitalWrite(LED1, HIGH); // turn the LED at pin 1 on
    digitalWrite(LED2, LOW); // other LED off
  }
  else if (val == 2) { // If 2 received
    digitalWrite(LED2, HIGH); // turn the LED at pin 2 on
    digitalWrite(LED1, LOW); //other LED off
  }
  delay(10); // Wait 10 milliseconds
}
