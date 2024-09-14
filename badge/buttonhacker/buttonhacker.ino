
void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  Serial.println("Bon matin");
}

void loop() {
  if (Serial.available() > 0)
  {
    char rcv = Serial.read();
    Serial.println(rcv);
  }
}
