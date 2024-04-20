
// kiểm tra kí tự là nguyên âm hay phụ âm

import 'dart:io';

main()
{
  print( "Nhập kí tự cần kiểm tra: ");
  String? str= stdin.readLineSync();
  switch( str)
  {
    case 'u':
    case 'U':
    case 'e':
    case 'E':
    case 'o':
    case 'O':
    case 'a':
    case 'A':
    case 'i':
    case 'I':
        print( "$str là nguyên âm");
      break;
    default:
        print( "$str là phụ âm");
      break;
  }
}