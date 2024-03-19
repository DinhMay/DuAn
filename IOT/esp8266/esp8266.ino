#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>

const char *ssid = "Galaxy A235A0C";
const char *password = "12345678";

ESP8266WebServer server(80);

void handleRoot() {
  String html = "<html style='font-family: Arial, Helvetica, sans-serif; margin: 0px auto; text-align: center;'>";
  // ... (your HTML content, excluding the server handling logic)
  html += "</body>";
  html += "</html>";

  server.send(200, "text/html", html);
}

void motorControl() {
  String command = server.arg("command");
  // ... (your motor control logic)
  server.send(200, "text/plain", "OK");
}

void updateSensorData() {
  // ... (your sensor data update logic)
  server.send(200, "application/json", data);
}

void setup() {
  Serial.begin(9600);

  Serial.println();
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected");

  server.on("/", HTTP_GET, handleRoot);
  server.on("/motor", HTTP_GET, motorControl);
  server.on("/update-sensor-data", HTTP_GET, updateSensorData);

  server.begin();
  Serial.println("Server started");
  Serial.print("Use this URL to connect: ");
  Serial.print("http://");
  Serial.print(WiFi.localIP());
  Serial.println("/");
  delay(1000);
}

void loop() {
  server.handleClient();
}