
#define bom_nuoc 11
#define loa_canh_bao 12
#define den_canh_bao 13

#define cam_bien_lua 3
#define cam_bien_khi_gas 4
#define cam_bien_khi_CO 5
#include <Wire.h>
#include <LiquidCrystal_I2C.h>
LiquidCrystal_I2C lcd(0x27, 16, 2);
void setup() {
  Serial.begin(9600);
  pinMode(bom_nuoc, OUTPUT);
  pinMode(loa_canh_bao, OUTPUT);
  pinMode(den_canh_bao, OUTPUT);
  
  pinMode(cam_bien_khi_gas, INPUT);
  pinMode(cam_bien_lua, INPUT);
  pinMode(cam_bien_khi_CO, INPUT);
  
  lcd.init();
  lcd.backlight();
}

void loop() {
  // put your main code here, to run repeatedly:
    int a, b, c;
    a=digitalRead(cam_bien_khi_gas);
    b=digitalRead(cam_bien_lua);
    c=digitalRead(cam_bien_khi_CO);
    lcd.setCursor(1, 0);
    lcd.print("H T BAO CHAY");

    if (a==1&&b==1&&c==1){
         lcd.setCursor(0,1);
         lcd.print("                ");
         lcd.setCursor(0, 1);
         lcd.print("GAS, LUA, CO");
         digitalWrite(den_canh_bao, HIGH);
         digitalWrite(loa_canh_bao, HIGH);
         digitalWrite(bom_nuoc, HIGH);
    }
    else if (a==1&&b==1){
         lcd.setCursor(0,1);
         lcd.print("                ");
         lcd.setCursor(0, 1);
         lcd.print("GAS,LUA");
         digitalWrite(den_canh_bao, HIGH);
         digitalWrite(loa_canh_bao, HIGH);
         digitalWrite(bom_nuoc, HIGH);
    }
    else if (a==1&&c==1){
         lcd.setCursor(0,1);
         lcd.print("                ");
         lcd.setCursor(0, 1);
         lcd.print("GAS,CO");
         digitalWrite(den_canh_bao, HIGH);
         digitalWrite(loa_canh_bao, HIGH);
         digitalWrite(bom_nuoc, HIGH);
    }
    else if (b==1&&c==1){
         lcd.setCursor(0,1);
         lcd.print("                ");
         lcd.setCursor(0, 1);
         lcd.print("LUA,CO");
         digitalWrite(den_canh_bao, HIGH);
         digitalWrite(loa_canh_bao, HIGH);
         digitalWrite(bom_nuoc, HIGH);
    }
    else if(a==1){
         lcd.setCursor(0,1);
         lcd.print("                ");
         lcd.setCursor(0, 1);
         lcd.print("RO RI KHI GAS");
         digitalWrite(den_canh_bao, HIGH);
         digitalWrite(loa_canh_bao, HIGH);
         digitalWrite(bom_nuoc, HIGH);
    }
    else if(b==1){
         lcd.setCursor(0,1);
         lcd.print("                ");
         lcd.setCursor(0, 1);
         lcd.print("CO CHAY");
         digitalWrite(den_canh_bao, HIGH);
         digitalWrite(loa_canh_bao, HIGH);
         digitalWrite(bom_nuoc, HIGH);
    }
    else if(c==1){
         lcd.setCursor(0,1);
         lcd.print("                ");
         lcd.setCursor(0, 1);
         lcd.print("RO RI KHI CO");
         digitalWrite(den_canh_bao, HIGH);
         digitalWrite(loa_canh_bao, HIGH);
         digitalWrite(bom_nuoc, HIGH);
    }
    else{
         lcd.setCursor(0,1);
         lcd.print("                ");
         lcd.setCursor(0,1);
         lcd.print("AN TOAN");
         delay(1000);
         digitalWrite(bom_nuoc, LOW);
         digitalWrite(den_canh_bao, LOW);
         digitalWrite(loa_canh_bao, LOW);     
        }
}
