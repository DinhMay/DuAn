
// chương trình tính tổng các số tự nhiên

import 'dart:io';

main()
{
  print( "Bạn cần tính tổng bao nhiêu số: ");
  int? n= int.parse( stdin.readLineSync() !);
  int tong= 0;
  for( int i= 1; i<= n; i++)
  {
    print( "Nhập số thứ ${ i}: ");
    int? x= int.parse( stdin.readLineSync() !);
    tong+= x;
  }
  print( "Tổng các số tự nhiên đã nhập: $tong");
}