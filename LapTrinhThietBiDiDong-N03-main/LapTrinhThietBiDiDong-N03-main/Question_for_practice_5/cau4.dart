import 'dart:io';

void main()
{
  File original = File('hello.txt');
  File copy = File('hello_copy.txt');
  original.copySync(copy.path);
  //print('File copied.');
}