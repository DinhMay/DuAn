/*
           chương trình chia hóa đơn với công thức: tổng tiền hóa đơn/ số người
*/

import 'dart:io';

main()
{
  print( "Nhập số người:");
  int? number= int.parse( stdin.readLineSync()!);
  print( "Nhập tổng tiền hóa đơn:");
  int? bill= int.parse( stdin.readLineSync()!);
  print( "Số tiền mỗi người cần phải thanh toán là: ${ bill/ number}");
}