/*
        chương trình xóa tất cả khoảng trắng khỏi chuỗi
*/

import 'dart:io';


main()
{
  String str= "Học    lập trình   thiết  bị   di    động";
  print( "Chuỗi sau khi xóa khoảng trắng:");
  print( str.split(" ").join(""));
}