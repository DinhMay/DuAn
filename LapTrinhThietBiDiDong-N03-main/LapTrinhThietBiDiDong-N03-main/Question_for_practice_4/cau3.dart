  // đọc ds số tiền chi phí = cách sd đầu vào và in tổng

import 'dart:ffi';
import 'dart:io';

void main()
{
  print( "Có bao nhiêu số chi phí cần tính: ");
  int? n= int.parse( stdin.readLineSync() !);
  print( "Nhập các số chi phí: ");
  int tong= 0;
  for( int i= 1; i<= n; i++)
  {
    int? value= int.parse( stdin.readLineSync() !);
    tong+= value;
  }
  print( "Tổng số chi phí: $tong");
}