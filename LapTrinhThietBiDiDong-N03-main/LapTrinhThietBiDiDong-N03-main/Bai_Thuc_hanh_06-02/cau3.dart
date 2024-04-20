

class Camera
{
  String? _id;
  String? _brand;
  String? _color;
  String? _prize;

 // Camera( this._id, this._brand, this._color, this._prize);

  String get id => this._id!;
  String get brand => this._brand!;
  String get color => this._color!;
  String get prize => this._prize!;

  set id( String id) => this._id= id;
  set brand( String brand) => this._brand= brand;
  set color( String color) => this._color= color;
  set prize( String prize) => this._prize= prize;

  void outCamera()
  {
    print( _id);
    print( _brand);
    print( _color);
    print( _prize);
  }

}

main()
{
  //Camera camera= new Camera( '1', 'Fujifilm', 'white', '5.000');
  //camera.outCamera();

  Camera cam= new Camera();
  
  cam.id= '2';
  cam.brand= 'Fujifil';
  cam.color= 'black';
  cam.prize= '5.000';
  
  cam.outCamera();

}