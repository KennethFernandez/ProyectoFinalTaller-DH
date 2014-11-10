#include <SoftwareSerial.h>

SoftwareSerial mySerial(8, 7); // RX, TX

int value = 0;
void setup()
  {
    pinMode(A0, INPUT);
    pinMode(8, OUTPUT);
    //Serial.begin(115200);
  }
  
void loop()
{
  value = /*42;*/1024 - analogRead(A0);
  for (byte i=0; i<6; i++) {
    int state = bitRead(42, i);
    digitalWrite(8, state);
    //Serial.print(state);
  }
  //Serial.println();
}
