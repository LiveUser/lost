import 'package:flutter_test/flutter_test.dart';
import 'package:lost/lost.dart';

void main() {
  test('Search a string', () {
    String myString = "Mi perrito ladra";
    String query = "mi";
    print(myString.search(query));
  });
  test("Find the amount of instances", (){
    String myString = "Mi perrito ladra";
    String query = "Perri mi la";
    print(myString.instancesOf(query));
  });
  test("Search ignoring diacritics", (){
    String myString = "Yo como mucho ñame";
    String query = "na";
    print(myString.search(query,true));
  });
  test("Instaces of query(ignoring diacritics)", (){
    String myString = "Yo como mucho ñame. Existe un pais que se llama Haití";
    String query = "na í";
    print(myString.instancesOf(query, true));
  });
}
