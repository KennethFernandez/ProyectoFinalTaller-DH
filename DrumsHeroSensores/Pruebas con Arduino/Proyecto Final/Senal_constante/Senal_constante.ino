int valor = 0;
void setup()
  {
    pinMode(A0, INPUT);
    pinMode(8, OUTPUT);
    Serial.begin(115200);
  }
  
void loop()
{
  digitalWrite(8, valor);
  if(valor) valor = 0;
  else valor = 1;
}
