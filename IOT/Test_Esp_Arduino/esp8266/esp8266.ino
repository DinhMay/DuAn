#include <ESP8266WiFi.h>
#include <ESP8266WebServer.h>
#include <Wire.h>

const char *ssid = "Galaxy A235A0C";
const char *password = "12345678";

ESP8266WebServer server(80);

float temperature ;
float humidity ;

// Khai báo biến để lưu trạng thái của motor
bool motorState = false;


void handleRoot() {
  String html = "<html style='font-family: Arial, Helvetica, sans-serif; margin: 0px auto; text-align: center;'>";
  html += "<head><title> WEBSERVER </title>";
  html += "<script>";
  html += "function updatePage() {";
  html += "  location.reload();";
  html += "}";
  html += "setTimeout(updatePage, 10000);";  // Cập nhật trang mỗi 15 giây
  html += "</script>";
  html += "</head>";
  html += "<body>";

  // Thêm container
  html += "<div style='width: 80%; margin: auto; padding: 20px; background-color: #f0f0f0;'>";

  html += "<H1 style='color:darkred'> ESP8266 WEBSERVER </H1>";
  html += "<H2> Nhom hoc phan IOT </H2>";
  html += "<H3> He thong dieu khien quat tu dong </H3>";
  html += "<B> Temperature: ";
  html += temperature;
  html += " *C</B>";
  html += "<B> Humidity: ";
  html += humidity;
  html += "%</B><br><br>";
  html += "<B> Motor State: ";
  html += "<div id='motorState'></div>";
  html += motorState ? "ON" : "OFF";
  html += "</B><br><br>";
  html += "<button type='button' onclick='motorControl(\"on\")'> motor on </button>";
  html += "<button type='button' onclick='motorControl(\"off\")'> motor off </button>";

  // Đóng container
  html += "</div>";
  
  html += "<script>";
  html += "function motorControl(command) {";
  html += "  var xhttp = new XMLHttpRequest();";
  html += "  var motorCommand = (command === 'on') ? 1 : 0;";  // Chuyển đổi chuỗi 'on' thành số 1, 'off' thành số 0
  html += "  xhttp.onreadystatechange = function() {";
  html += "    if (this.readyState == 4 && this.status == 200) {";
  html += "      console.log('Motor control command sent successfully.');";
  html += "      document.getElementById('motorState').innerText = command.toUpperCase(); // Thay đổi trạng thái trực tiếp trên trang";
  html += "    }";
  html += "  };";
  html += "  xhttp.open('GET', '/motor?command=' + motorCommand, true);";
  html += "  xhttp.send();";
  html += "}";
  html += "</script>";
  
  html += "</body>";
  html += "</html>";

  server.send(200, "text/html", html);
}

void readData(){
  Wire.requestFrom(8, 13); 
  while(Wire.available()){
    char dataType = Wire.read();
    if (dataType == 'H') {
      Wire.readBytes((byte*)&humidity, sizeof(float));
    } else if (dataType == 'T') {
      Wire.readBytes((byte*)&temperature, sizeof(float));
    } else if (dataType == 'M') {
      // Đọc trạng thái của motor từ Arduino
      motorState = Wire.read();
    }
  }
  Serial.print("Nhiệt độ: ");
  Serial.print(temperature);
  Serial.print(" *C | Độ ẩm: ");
  Serial.print(humidity);
  Serial.println(" % | Trạng thái motor: " + String(motorState ? "ON" : "OFF"));
}

void handleMotorControl() {
  String command = server.arg("command");
  if (command == "on") {
    // Gửi yêu cầu bật motor đến Arduino
    Wire.beginTransmission(8);
    Wire.write('M');
    Wire.write(1);  // 1 đại diện cho trạng thái ON
    Wire.endTransmission();
    motorState = true;  // Cập nhật trạng thái ngay lập tức
    Serial.println("Motor is ON");
  } else if (command == "off") {
    // Gửi yêu cầu tắt motor đến Arduino
    Wire.beginTransmission(8);
    Wire.write('M');
    Wire.write(0);  // 0 đại diện cho trạng thái OFF
    Wire.endTransmission();
    motorState = false;  // Cập nhật trạng thái ngay lập tức
    Serial.println("Motor is OFF");
  }

  delay(1000);

  // Phản hồi về trạng thái mới của motor
  readData();
}

void setup() {
  Serial.begin(9600);
  Wire.begin(5,4);  // Wire.begin(SDA, SCL);

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: " + WiFi.localIP().toString());

  server.on("/", HTTP_GET, handleRoot);
  server.on("/motor", HTTP_GET, handleMotorControl);  // Thêm đường dẫn xử lý motor
  server.begin();
}

void loop() {
  server.handleClient();
  readData();  
  handleMotorControl();
 
  delay(5000);  // Chờ xử lý dữ liệu I2C
}