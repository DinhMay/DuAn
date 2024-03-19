
class Animal
{
  String? _ten;
  int? _tuoi;

  // set value

  set ten( String ten) => this._ten= ten;
  set tuoi( int tuoi) => this._tuoi= tuoi;

  void set_value( String ten, int tuoi)
  {
    this._ten= ten;
    this._tuoi= tuoi;
  }   
}

class Zebra extends Animal
{
  String? origin;

  Zebra( String ten, int tuoi, String origin)
  {
    this.origin= origin;
    set_value( ten, tuoi);

  }

  void out()
  {
    print( _ten);
    print( _tuoi);
    print( origin);
  }
}

class Dolphin extends Animal
{
  String? origin;

  Dolphin( String ten, int tuoi, String origin)
  {
    this.origin= origin;
    set_value( ten, tuoi);
  }

  void out()
  {
    print( _ten);
    print( _tuoi);
    print( origin);
  }
}

main()
{
  Zebra zebra= new Zebra( 'Zebra', 16, 'Nam Phi');
  zebra.out();

  Dolphin dolphin= new Dolphin( 'Dolphin', 16, 'Đại Dương');
  dolphin.out();
}