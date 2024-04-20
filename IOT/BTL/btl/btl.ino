#include <Wire.h>
#include <LiquidCrystal_I2C.h>
#include <DHT.h>
#define sensor 7   
#define bom_nuoc 11
#define loa_canh_bao 12
#define den_canh_bao 10

#define cam_bien_lua 2
#define cam_bien_khi_gas 4
#define cam_bien_khi_CO 5

LiquidCrystal_I2C lcd (0x27,16,2);
int motor = 3;    
const int DHTPIN = 6;       
const int DHTTYPE = DHT11;   
DHT dht(DHTPIN, DHTTYPE);
int  mysensor;       
int led= 13;

byte degree[8] = {   
  0B01110,
  0B01010,
  0B01110,
  0B00000,
  0B00000,
  0B00000,
  0B00000,
  0B00000
};

void hienthichuoi( String chuoi)
{
  for( int j= 0; j< chuoi.length(); j++)
  {
    lcd.print( chuoi[ j]);
  }
}

void hienthiso( int so)
{
  String chuoi= String( so);
  for( int j= 0; j< chuoi.length(); j++)
  {
    lcd.print( chuoi[ j]);
  }
}

  String array1= "Temp:";
  String array2= "no people";
  String array3= "analog= ";
  String array4= "den sang";
  String array5= "den tat";

  String str1= "HT BAO CHAY";
  String str2= "GA, LUA, CO";
  String str3= "GA, LUA";
  String str4= "GA, CO";
  String str5= "LUA, CO";
  String str6= "RO RI KHI GA";
  String str7= "CO CHAY";
  String str8= "RO RI KHI CO";
  String str9= "AN TOAN";

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(bom_nuoc, OUTPUT);
  pinMode(loa_canh_bao, OUTPUT);
  pinMode(den_canh_bao, OUTPUT);
  
  pinMode(cam_bien_khi_gas, INPUT);
  pinMode(cam_bien_lua, INPUT);
  pinMode(cam_bien_khi_CO, INPUT);
  
  lcd.begin();      
  lcd.backlight();
  lcd.createChar( 0, degree);  
  dht.begin();   
  pinMode(motor,OUTPUT);
  pinMode( led, OUTPUT);
  digitalWrite( led, LOW);
}

void loop() {
  int t = dht.readTemperature();  // nhiệt độ
  int giatri_analog= analogRead( A0);
  mysensor = digitalRead(sensor); 

  lcd.clear();
  int a, b, c;
  a= digitalRead( cam_bien_khi_gas);
  b= digitalRead( cam_bien_lua);
  c= digitalRead( cam_bien_khi_CO);

  if ( a== 1 and b== 1 and c== 1)
  {
      lcd.clear();
      lcd.setCursor( 0, 0);
      hienthichuoi( str1);
      lcd.setCursor( 0,1);
      hienthichuoi( str2);
      digitalWrite( den_canh_bao, HIGH);
      digitalWrite( loa_canh_bao, HIGH);
      digitalWrite( bom_nuoc, HIGH);
      delay( 500);
   }
   else if ( a== 1 and b== 1)
   {
      lcd.clear();
      lcd.setCursor( 0, 0);
      hienthichuoi( str1);
      lcd.setCursor( 0,1);
      hienthichuoi( str3);
      digitalWrite( den_canh_bao, HIGH);
      digitalWrite( loa_canh_bao, HIGH);
      digitalWrite( bom_nuoc, HIGH);
      delay( 500);
   }
   else if( a== 1 and c== 1)
   {
      lcd.clear();
      lcd.setCursor( 0, 0);
      hienthichuoi( str1);
      lcd.setCursor( 0,1);
      hienthichuoi( str4);
      digitalWrite( den_canh_bao, HIGH);
      digitalWrite( loa_canh_bao, HIGH);
      digitalWrite( bom_nuoc, HIGH);
      delay( 500);
   }
   else if( b== 1 and c== 1)
   {
      lcd.clear();
      lcd.setCursor( 0, 0);
      hienthichuoi( str1);
      lcd.setCursor( 0,1);
      hienthichuoi( str5);
      digitalWrite( den_canh_bao, HIGH);
      digitalWrite( loa_canh_bao, HIGH);
      digitalWrite( bom_nuoc, HIGH);
   }
   else if( a== 1)
   {
      lcd.clear();
      lcd.setCursor( 0, 0);
      hienthichuoi( str1);
      lcd.setCursor( 0,1);
      hienthichuoi( str6);
      digitalWrite( den_canh_bao, HIGH);
      digitalWrite( loa_canh_bao, HIGH);
      digitalWrite( bom_nuoc, HIGH);
      delay( 500);
   }
   else if( b== 1)
   {
      lcd.clear();
      lcd.setCursor( 0, 0);
      hienthichuoi( str1);
      lcd.setCursor( 0,1);
      hienthichuoi( str7);
      digitalWrite( den_canh_bao, HIGH);
      digitalWrite( loa_canh_bao, HIGH);
      digitalWrite( bom_nuoc, HIGH);
   }
   else if( c== 1)
   {
      lcd.clear();
      lcd.setCursor( 0, 0);
      hienthichuoi( str1);
      lcd.setCursor( 0,1);
      hienthichuoi( str8);
      digitalWrite( den_canh_bao, HIGH);
      digitalWrite( loa_canh_bao, HIGH);
      digitalWrite( bom_nuoc, HIGH);
      delay( 500);
   }
   else
   {
      lcd.clear();
      lcd.setCursor( 0, 0);
      hienthichuoi( str1);
      lcd.setCursor( 0,1);
      hienthichuoi( str9);
      delay( 1000);
      digitalWrite( den_canh_bao, LOW);
      digitalWrite( loa_canh_bao, LOW);
      digitalWrite( bom_nuoc, LOW);
      delay( 500);
   }
   
//    
//  if( mysensor== 1)   // if mysensor==1 thì có ng trong phòng
//  {
//    lcd.clear();
//    digitalWrite(motor,HIGH);   // quạt chạy
//    lcd.setCursor( 0, 0);
//    hienthichuoi( array1);
//    lcd.setCursor(6,0);
//    hienthiso( round( t));
//    lcd.write( byte( 0));
//    lcd.print("C");
//        if( giatri_analog< 500)
//      {
//        digitalWrite( led, HIGH);
//        lcd.setCursor( 0, 1);
//        hienthichuoi( array3);
//        hienthiso( giatri_analog);        
//      }
//      else
//      {
//        digitalWrite( led, LOW);
//        lcd.setCursor( 0, 1);
//        hienthichuoi( array3);
//        hienthiso( giatri_analog);
//      }
//      delay( 500);
//  }
//  else if( mysensor== 0 and giatri_analog< 500 or mysensor== 0 and giatri_analog> 500)
//  {
//    lcd.clear();
//    digitalWrite(motor,LOW);
//    digitalWrite( led, LOW);
//    lcd.setCursor( 0, 0);
//    hienthichuoi( array2);
//    delay( 400);
//  }
//  
}
