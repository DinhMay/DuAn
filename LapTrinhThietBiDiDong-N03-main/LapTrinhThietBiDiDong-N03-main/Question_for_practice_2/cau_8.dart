
// chương trình tạo máy tính thực hiện phép cộng trừ nhân chia

import 'dart:io';

main()
{
  print( "Nhập số thứ nhất: ");
  double? a= double.parse( stdin.readLineSync() !);
  print( "Nhập số thứ hai: ");
  double? b= double.parse( stdin.readLineSync() !);
  print( "Phép tính bạn muốn thực hiện: ");
  String? s= stdin.readLineSync();
  switch( s)
  {
    case '+':
        print( "$a + $b = ${ a+ b}");
      break;
    case '-':
        print( "$a - $b = ${ a- b}");
      break;
    case 'x':
        print( "$a x $b = ${ a* b}");
      break;
    case '/':
        print( "$a / $b = ${ a/ b}");
      break;
  }
}