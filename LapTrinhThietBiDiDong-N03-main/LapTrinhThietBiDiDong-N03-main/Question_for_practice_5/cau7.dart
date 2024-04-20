import 'dart:io';

void main() 
{
  // open file
  File file = File( "students.csv");
  // write to file
  file.writeAsStringSync( 'Name, Age, Address\n');

  // user input name
  stdout.write( "Enter name of student: ");
  String? name = stdin.readLineSync();

  // user input phone
  stdout.write( "Enter phone of student: ");
  String? Age = stdin.readLineSync();

  // user input address
  stdout.write( "Enter address of student: ");
  String? Address = stdin.readLineSync();
  
  file.writeAsStringSync( '$name, $Age, $Address\n', mode: FileMode.append);
}