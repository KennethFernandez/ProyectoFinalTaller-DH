/*
  AnalogReadSerial
  Reads an analog input on pin 0, prints the result to the serial monitor.
  Attach the center pin of a potentiometer to pin A0, and the outside pins to +5V and ground.
 
 This example code is in the public domain.
 */

// the setup routine runs once when you press reset:
void setup() {
  pinMode(A0, INPUT);
  pinMode(2, OUTPUT);

  // initialize serial communication at 9600 bits per second:
  Serial.begin(9600);
}

// the loop routine runs over and over again forever:
void loop() {
  // read the input on analog pin 0:
  //int sensorValue = 1024 - analogRead(A0); // Valor de 0 - 64 = 2^6
  // print out the value you read:
  //Serial.println(sensorValue);
  //Serial.println(millis());
  //delay(1);        // delay in between reads for stability
}
