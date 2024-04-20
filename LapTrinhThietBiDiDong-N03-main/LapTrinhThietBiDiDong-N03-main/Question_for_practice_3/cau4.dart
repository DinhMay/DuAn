
// tìm diện tích hình tròn bằng hàm.

import 'dart:io';

void dientich( double r)
{
  print( "${ 3.14* r* r}");
}

main()
{
  print( "Nhập bán kính hình tròn: ");
  double? r= double.parse( stdin.readLineSync() !);
  print( "Diện tích hình tròn: ");
  dientich( r);
}