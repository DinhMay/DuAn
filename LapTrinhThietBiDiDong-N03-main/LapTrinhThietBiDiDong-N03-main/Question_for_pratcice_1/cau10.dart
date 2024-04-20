/*
        chương trình chuyển String qua int
*/

import 'dart:io';
main()
{
  String str= "7";
  print( "Kiểu dữ liệu String ban đầu là:");
  print( str.runtimeType);
  int num= int.parse(str);
  print( "Kết quả sau khi chuyển đổi: $num với kiểu dữ liệu ${ num.runtimeType}");
}