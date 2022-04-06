//SS7_BlinkingTHISBUTTON
const int buttonPin = 2;
const int LED0 = 10;
const int LED2 = 12;
const int LED3 = 13;
const int LED4 = 9;
const int LED5 = 8;
const int LED6 = 7;
const int LED1 = 6;
int buttonState = 0;

void setup() {
  pinMode(LED0, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  pinMode(LED6, OUTPUT);
  pinMode(LED1, OUTPUT);
  pinMode(buttonPin, INPUT);
}

void loop() {
  buttonState = digitalRead(buttonPin);
  if(buttonState == HIGH){
    digitalWrite(LED0, HIGH);
    delay(600);
    digitalWrite(LED0, LOW);
    digitalWrite(LED1, HIGH);
    digitalWrite(LED2, HIGH);
    digitalWrite(LED3, HIGH);
    delay(600);
    digitalWrite(LED1, LOW);
    digitalWrite(LED2, LOW);
    digitalWrite(LED3, LOW);
    digitalWrite(LED4, HIGH);
    digitalWrite(LED5, HIGH);
    digitalWrite(LED6, HIGH);
    delay(600);
    digitalWrite(LED4, LOW);
    digitalWrite(LED5, LOW);
    digitalWrite(LED6, LOW);
    digitalWrite(LED0, HIGH);
    digitalWrite(LED2, HIGH);
    digitalWrite(LED4, HIGH);
    delay(600);
    digitalWrite(LED5, HIGH);
    digitalWrite(LED3, HIGH);
    digitalWrite(LED1, HIGH);
    digitalWrite(LED0, LOW);
    digitalWrite(LED6, HIGH);
}else{
  digitalWrite(LED0, LOW);
  digitalWrite(LED2, LOW);
  digitalWrite(LED3, LOW);
  digitalWrite(LED4, LOW);
  digitalWrite(LED5, LOW);
  digitalWrite(LED6, LOW);
  digitalWrite(LED1, LOW);
  }

}
