#include <Wire.h>
#include <DHT.h>

#define in4 6
#define in3 7
#define DHTPIN 2
#define DHTTYPE DHT11
DHT dht(DHTPIN, DHTTYPE);

float humidity;
float temperature;


void sendData() {
  bool motorStatus = false;  // Khai báo biến trạng thái motor
  humidity = dht.readHumidity();
  temperature = dht.readTemperature();

  Wire.write('H');
  Wire.write((byte*)&humidity, sizeof(float));

  Wire.write('T');
  Wire.write((byte*)&temperature, sizeof(float));

  Serial.println("Nhiệt độ: ");
  Serial.print(temperature);
  Serial.print(" *C | Độ ẩm: ");
  Serial.print(humidity);
  Serial.println(" %");

  Wire.write('M');
  motorStatus = (temperature > 15.0);

  Wire.write((byte*)&motorStatus, sizeof(bool)); // Gửi trạng thái motor

  if (motorStatus) {
    digitalWrite(in3, HIGH);
    digitalWrite(in4, LOW);
    Serial.println("Motor is ON");
  } else {
    digitalWrite(in3, LOW);
    digitalWrite(in4, LOW);
    Serial.println("Motor is OFF");
  }
}

void setup() {
  Serial.begin(9600);
  Wire.begin(8);

  Wire.onRequest(sendData);

  dht.begin();
}

void loop() {
  sendData();
  delay(5000);
}