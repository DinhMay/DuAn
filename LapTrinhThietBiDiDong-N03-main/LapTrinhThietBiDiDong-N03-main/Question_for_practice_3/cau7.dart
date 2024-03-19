
// tính lũy thừa của một số n.

import 'dart:io';

void calculate( int so, int mu)
{
  int kq= 1;
  for( int i= 1; i<= mu; i++)
  {
    kq*= so;
  }
  print( "$kq");
}

main()
{
  print( "Nhập số cần tính: ");
  int? so= int.parse( stdin.readLineSync() !);
  print( "Nhập số mũ: ");
  int? mu= int.parse( stdin.readLineSync() !);
  print( "Kết quả của lũy thừa: ");
  calculate( so, mu);
}