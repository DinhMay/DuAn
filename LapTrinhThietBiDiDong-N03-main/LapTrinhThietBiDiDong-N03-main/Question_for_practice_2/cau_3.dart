import 'dart:io';

// chương trình kiểm tra số nguyên âm, nguyên dương

main()
{
  print( "Nhập số cần kiểm tra: ");
  int? n= int.parse( stdin.readLineSync() !);
  if( n> 0)
  {
    print( "$n là số dương");
  }
  else
  {
    print( "$n là số âm");
  }
}