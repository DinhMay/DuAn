/*
        chương trình in tên đầy đủ từ tên và họ từ người dùng nhập vào
*/

import 'dart:io';
import 'dart:collection';

main()
{
  print( "Bạn hãy nhập tên:");
  String? ten= stdin.readLineSync();
  
  print( "Bạn hãy nhập họ:");
  String? ho= stdin.readLineSync();
  print( "$ho $ten");
}