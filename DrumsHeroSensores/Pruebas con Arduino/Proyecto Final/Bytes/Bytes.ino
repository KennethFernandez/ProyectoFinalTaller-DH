const byte numPins = 7;
byte pins[] = {13, 14, 15, 16, 17, 18, 19};
void setup() {
  Serial.begin(115200);
}

void loop() {
  while(!Serial.available()); // Do nothing until serial input is received
  byte num = Serial.read(); // Get num from somewhere
  for (byte i=0; i<numPins; i++) {
    byte state = bitRead(num, i);
    digitalWrite(pins[i], state);
    Serial.print(state);
  }
  Serial.println();
}
