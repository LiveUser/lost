# lost

A package for finding

Hecho en 🇵🇷 por Radamés J. Valentín Reyes

## Import the library/package

~~~dart
import 'package:lost/lost.dart';
~~~

## Searching a string

returns true if an instance of the query is found.

~~~dart
String myString = "Mi perrito ladra";
String query = "mi";
print(myString.search(query));
~~~

Search but with the optional parameter ignoreDiacritics = true

~~~dart
String myString = "Yo como mucho ñame";
String query = "na";
print(myString.search(query,true));
~~~



## Amount of instances

returns an integer representing the amount of instances of the query found on the String

~~~dart
String myString = "Mi perrito ladra";
String query = "Perri mi la";
print(myString.instancesOf(query));
~~~

amount of instances but with the optional parameter ignoreDiacritics = true

~~~dart
String myString = "Yo como mucho ñame. Existe un pais que se llama Haití";
String query = "na í";
print(myString.instancesOf(query, true));
~~~



## Technical details

* Queries are assumed to be separated by a space, this library may not work with languages like Japanese which don't use spaces unless you separate each character using a space or run the function recursively sending each character of the query as search parameter.

