import 'dart:io';

// chương trình kiểm tra số chẵn lẻ

main()
{
  print( "Nhập số cần kiểm tra: ");
  int? n= int.parse( stdin.readLineSync() !);
  if( n% 2== 0)
  {
    print( "$n là số chắn");
  }
  else
  {
    print( "$n là số lẻ");
  }

}