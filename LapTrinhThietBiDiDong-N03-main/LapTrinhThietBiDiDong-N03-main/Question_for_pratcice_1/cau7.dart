/*
        chương trình tìm thương và số dư của hai số nguyên
*/

import 'dart:io';

main()
{
  print( "Nhập số nguyên a: ");
  int? a= int.parse(stdin.readLineSync()!);
  print( "Nhập số nguyên b: ");
  int? b= int.parse(stdin.readLineSync()!);
  print( "Thương của $a và $b là: ${ a/b}");
  print( "Số dư của $a và $b là ${ a%b}");
}