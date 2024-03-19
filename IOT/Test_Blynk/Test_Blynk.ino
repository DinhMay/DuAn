
// Fill-in information from your Blynk Template here
#define BLYNK_TEMPLATE_ID "TMPL6vm5aHpTL"
#define BLYNK_TEMPLATE_NAME "TestBlynk"

#define BLYNK_FIRMWARE_VERSION        "0.1.0"

#define BLYNK_PRINT Serial
//#define BLYNK_DEBUG

#define APP_DEBUG
#include "DHT.h"
#define DHTPIN D3
#define DHTTYPE DHT22
DHT dht(DHTPIN, DHTTYPE);
#define led D4
boolean bt_state=HIGH;
#include "BlynkEdgent.h"

void setup()
{
  Serial.begin(115200);
  delay(100);
  pinMode(led, OUTPUT);
  dht.begin();
  BlynkEdgent.begin();
}

BLYNK_WRITE(V2)
{
  int pinLED = param.asInt();
  digitalWrite(led, pinLED);
}


void loop() {

  
  BlynkEdgent.run();

    float t = dht.readTemperature();
    float h = dht.readHumidity();
    if (isnan(h) || isnan(t)) {
      Serial.println(F("Failed to read from DHT sensor!"));
      return;
    }
    Blynk.virtualWrite(V1,t);
    Blynk.virtualWrite(V0,h);
    Serial.print(F("Temperature: "));
    Serial.print(t);
    Serial.print(F("°C "));
    Serial.print(F("Humidity: "));
    Serial.print(h);
    Serial.println(F("%"));
    delay(1000);
    

}
