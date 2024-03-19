
import 'dart:io';

class HinhDang
{
   double? chieucao;
   double? chieurong;
   HinhDang( double chieucao, double chieurong)
   {
    this.chieucao= chieucao;
    this.chieurong= chieurong;
   }

}

class TamGiac extends HinhDang
{

  TamGiac( double chieucao, double chieurong) :super( chieucao, chieurong);

  double Area()
  {
    return ( ( chieucao!* chieurong!)/ 2);
  }
}

class HinhChuNhat extends HinhDang
{

  HinhChuNhat( double chieucao, double chieurong) :super( chieucao, chieurong);

  double area()
  {
    return chieucao!* chieurong!;
  }
}

main()
{
  TamGiac tamgiac= new TamGiac( 2, 3);
  print( "Tam giác: ${ tamgiac.Area()}");

  HinhChuNhat hinhChuNhat= new HinhChuNhat( 3, 4);
  print( "Hình chữ nhật: ${ hinhChuNhat.area()}");
}

