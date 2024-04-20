

class Animal
{
  var id= '1';
  var name= 'Mèo';
  var color= 'White';

  void outAnimal()
  {
    print( id);
    print( name);
    print( color);
  }
}

class Cat extends Animal
{
  String sound= 'meoooooo';
  void outCat()
  {
    super.outAnimal();
    print( sound);
  }
}

main()
{
  Cat cat= new Cat();
 // cat.outAnimal();
  cat.outCat();
}