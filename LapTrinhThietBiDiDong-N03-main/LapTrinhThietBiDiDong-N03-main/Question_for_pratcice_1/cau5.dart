/*
        chương trình in bình phương của một số do người dùng nhập vào
*/

import 'dart:io';

main()
{
  print( "Nhập n: ");
  int? n= int.parse( stdin.readLineSync() !);
  print( "Bình phương của n: ${ n* n}");
}