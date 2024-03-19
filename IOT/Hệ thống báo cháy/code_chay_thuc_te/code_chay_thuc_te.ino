#define Analog_gas A3
#define Analog_lua A2
#define Analog_CO A1
#define led 13
#define loa 12
#define bom_nuoc 11
#include <LCD_I2C.h>
LCD_I2C lcd(0x27);
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);

  pinMode(Analog_gas, INPUT);
  pinMode(Analog_lua, INPUT);
  pinMode(Analog_CO, INPUT);
  pinMode(led, OUTPUT);
  pinMode(loa, OUTPUT);
  pinMode(bom_nuoc, OUTPUT);
  lcd.begin();
  lcd.backlight();
}

void loop() {
  // put your main code here, to run repeatedly:
  int a, b, c;
  a = analogRead(Analog_gas);
  Serial.println ("Gia tri analog cam bien khi gas: ");
  Serial.println(a);
  b = analogRead(Analog_lua);
  Serial.println ("Gia tri analog cam bien lua: ");
  Serial.println(b);
  c = analogRead(Analog_CO);
  Serial.println ("Gia tri analog cam bien khi CO: ");
  Serial.println(c);
  
  lcd.setCursor(0,0);
  lcd.print("H T BAO CHAY");
  
    if(a>350&&b<700&&c>650){
         lcd.setCursor(0,1);
         lcd.print("                ");
         lcd.setCursor(0, 1);
         lcd.print("GAS, LUA, CO");
         digitalWrite(led, HIGH);
         digitalWrite(loa, HIGH);
         digitalWrite(bom_nuoc, HIGH);
    }
    else if(a>350&&b<700){
         lcd.setCursor(0,1);
         lcd.print("                ");
         lcd.setCursor(0, 1);
         lcd.print("GAS,LUA");
         digitalWrite(led, HIGH);
         digitalWrite(loa, HIGH);
         digitalWrite(bom_nuoc, HIGH);
    }
    else if(a>350&&c>650){
         lcd.setCursor(0,1);
         lcd.print("                ");
         lcd.setCursor(0, 1);
         lcd.print("GAS,CO");
         digitalWrite(led, HIGH);
         digitalWrite(loa, HIGH);
         digitalWrite(bom_nuoc, HIGH);
    }
    else if(b<700&&c>650){
         lcd.setCursor(0,1);
         lcd.print("                ");
         lcd.setCursor(0, 1);
         lcd.print("LUA,CO");
         digitalWrite(led, HIGH);
         digitalWrite(loa, HIGH);
         digitalWrite(bom_nuoc, HIGH);
    }
    else if(a>350){
         lcd.setCursor(0,1);
         lcd.print("                ");
         lcd.setCursor(0, 1);
         lcd.print("RO RI KHI GAS");
         digitalWrite(led, HIGH);
         digitalWrite(loa, HIGH);
         digitalWrite(bom_nuoc, HIGH);
    }
    else if(b<700){
         lcd.setCursor(0,1);
         lcd.print("                ");
         lcd.setCursor(0, 1);
         lcd.print("CO CHAY");
         digitalWrite(led, HIGH);
         digitalWrite(loa, HIGH);
         digitalWrite(bom_nuoc, HIGH);
    }
    else if(c>650){
         lcd.setCursor(0,1);
         lcd.print("                ");
         lcd.setCursor(0, 1);
         lcd.print("RO RI KHI CO");
         digitalWrite(led, HIGH);
         digitalWrite(loa, HIGH);
         digitalWrite(bom_nuoc, HIGH);
    }
    else{
         lcd.setCursor(0,1);
         lcd.print("                ");
         lcd.setCursor(0,1);
         lcd.print("AN TOAN");
         delay(1000);
         digitalWrite(bom_nuoc, LOW);
         digitalWrite(led, LOW);
         digitalWrite(loa, LOW);
    }
}
