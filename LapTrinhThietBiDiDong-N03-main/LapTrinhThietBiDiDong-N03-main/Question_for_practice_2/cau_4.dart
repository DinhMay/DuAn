
// chương trình in tên của bạn 100 lần

import 'dart:io';

main()
{
  print( "Nhập tên của bạn: ");
  String? str= stdin.readLineSync();
  for( int i= 1; i< 101; i++)
  {
    print( str);
  }
}