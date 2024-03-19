import 'dart:io';

void main() {
  // open file
  File file = File('hello.txt');
  // delete file
  file.deleteSync();
  //print('File deleted.');
}