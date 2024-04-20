#include <DHT.h>

#define motorPin 6
#define in4Pin 7
#define in3Pin 8
#define DHTPIN 5
#define DHTTYPE DHT11

DHT dht(DHTPIN, DHTTYPE);

void setup() {
  Serial.begin(9600);
  pinMode(motorPin, OUTPUT);
  pinMode(in3Pin, OUTPUT);
  pinMode(in4Pin, OUTPUT);
  digitalWrite(in3Pin, LOW);
  digitalWrite(in4Pin, HIGH);
  analogWriteRange(255);
  analogWriteFreq(1000);
  dht.begin();
}

void loop() {
  float humidity = dht.readHumidity();
  float temperature = dht.readTemperature();

  Serial.print("Temperature: ");
  Serial.print(temperature);
  Serial.print(" *C | Humidity: ");
  Serial.print(humidity);
  Serial.println(" %");

  delay(5000); // Delay 5 seconds between sensor readings

  if (Serial.available() > 0) {
    String command = Serial.readStringUntil('\n');
    processCommand(command);
  }
}

void processCommand(String command) {
  if (command == "motorOn") {
    analogWrite(motorPin, 150);
  } else if (command == "motorOff") {
    analogWrite(motorPin, 0);
  } else {
    Serial.println("Unknown command");
  }
}