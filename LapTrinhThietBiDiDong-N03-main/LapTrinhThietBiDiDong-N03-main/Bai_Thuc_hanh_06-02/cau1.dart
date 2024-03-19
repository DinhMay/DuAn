

enum Gender{ Male, Female, Other}

class Person
{
  var firtName;
  var lastName;
  Gender? gender;
  Person( this.firtName, this.lastName, this.gender);

  void out()
  {
    print( firtName);
    print( lastName);
    print( gender);
  }

}

void main()
{
  Person person= new Person( "Đinh", "Mây", Gender.Male);
  person.out();
}