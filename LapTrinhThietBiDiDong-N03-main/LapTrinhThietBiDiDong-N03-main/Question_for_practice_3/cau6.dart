
// đảo ngược chuỗi bằng hàm.

import 'dart:io';

String reverse( String input)
{
  var chars = input.split('');
  return chars.reversed.join();
}

main()
{
  print( "Nhập chuỗi cần đảo: ");
  String? str= stdin.readLineSync() !;
  print( "Chuỗi sau khi đảo: ${ reverse( str)}");
}