
// in các số chẵn giữa các khoảng cách bằng hàm.

import 'dart:io';

void printEven( int a, int b)
{
  
  for( int i= a; i<= b; i++)
  {
    if( i% 2== 0)
    {
      print( "$i");
    }
  }
}

main()
{
  print( "Nhập số a: ");
  int? a= int.parse( stdin.readLineSync() !);
  print( "Nhập số b: ");
  int? b= int.parse( stdin.readLineSync() !);
  print( "Các số chẵn từ $a tới $b là: ");
  printEven( a, b);
}