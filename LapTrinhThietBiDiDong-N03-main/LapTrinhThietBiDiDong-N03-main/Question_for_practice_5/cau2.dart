import 'dart:io';

void main()
{
  List<String> myFriend= [ 'A', 'B', 'C', 'D'];
  File file = File("hello.txt");

  // viết vào file
  String kq = file.readAsStringSync();
  for (String name in myFriend) {
    kq += '\n' + name;
  }
  file.writeAsStringSync( kq);
}