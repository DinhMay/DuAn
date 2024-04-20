
class Mom
{
  void display()
  {
    print( "Mom");
  }
}

class daugther extends Mom
{
  void display()
  {
    super.display()
;    print("daugther");
  }
}

main()
{
  daugther dth= new daugther();
  dth.display();
}