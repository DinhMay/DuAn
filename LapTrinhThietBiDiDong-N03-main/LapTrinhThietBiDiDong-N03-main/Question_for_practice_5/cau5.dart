
// tạo 100 tệp bằng vòng lặp

import 'dart:io';
void main()
{
  for (int i = 0; i < 100; i++) 
  {
    File file = File('file$i.txt');
    file.createSync();
    print('File created: ${file.path}');
  }
}