
import 'dart:io';

void main()
{
  Map<String, dynamic> map = 
  {
    'name': 'Mây', 
    'phone': '0123456',
  };
  List<String> key =
      map.keys.where(( element) => element.length == 4).toList();
  print( key);
}