
import 'dart:io';

void main()
{
  House hs= new House( '1', 'House 1', '3.000');
  hs.out();
}

class House
{
  var id;
  var name;
  var prize;

  // funtion
  House( this.id, this.name, this.prize) {}

  void out()
  {
    print( id);
    print( name);
    print( prize);
  }
}