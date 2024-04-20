
// tạo bảng cửu chương từ 1- 9

import 'dart:io';

main()
{
  print( "Bảng cửu chương: ");
  for( int i= 1; i<= 9; i++)
  {
    for( int j= 1; j<= 9; j++)
    {
      print( "$i x $j = ${ i* j}");
    }
  }
}