/*
        chương trình đổi chỗ hai số
*/

main()
{
  int a= 3, b= 4;
  print( "Giá trị ban đầu của a và b là:");
  print( "a: $a");
  print( "b: $b");
  int tg= a; a= b; b= tg;
  print( "Giá trị của a và b sau khi đổi chỗ:");
  print( "a= $a");
  print( "b: $b");
}