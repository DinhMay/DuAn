
void main()
{
  List<String> names= [ "b", "ac", "a", "d", "e", "f", "g"];

  List<String> startWithS =
      names.where((element) => element.startsWith("a")).toList();

  print( startWithS);
}