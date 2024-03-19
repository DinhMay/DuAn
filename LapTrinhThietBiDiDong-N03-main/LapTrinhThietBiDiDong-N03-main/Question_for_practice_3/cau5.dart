
// thực hiện định lí pythagore 

import 'dart:io';
import 'dart:math';

double pythagore(double a, double b) {
  double c = sqrt( a* a+ b* b);
  return c;
}

main()
{
  print( "Nhập cạnh a: ");
  double? a= double.parse( stdin.readLineSync() !);
  print( "Nhập cạnh b: ");
  double? b= double.parse( stdin.readLineSync() !);
  print( "Ta có kết quả sau khi thực hiện pythagone c= ${ pythagore( a, b)}");
}