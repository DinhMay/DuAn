
import 'dart:io';

void main()
{
  Laptop lt= new Laptop();
  lt.out();
}

class Laptop
{
  var id= "B3AD9B1F-86CD-47AD-B14D-632737D44116";
  var name= "DESKTOP-0VN1U94";
  var ram= "8.00 GB";

  // funtion

  void out()
  {
    print( id);
    print( name);
    print( ram);
  }
}