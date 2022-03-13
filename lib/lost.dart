library lost;
import 'package:normalizer/normalizer.dart';

extension SearchFunctionality on String{
  ///Returns true is an instance of the query was found
  bool search(
      ///Search query
      String query, 
      ///Ignore diacritical symbols. Example ñ matches n. This requires extra time and computing power.
      [bool ignoreDiacritics = false,]
    ){
    //Make the query lower case
    query = query.toLowerCase();
    if(ignoreDiacritics){
      query = query.normalize();
    }
    //Make the String to be searched lower case
    String thisText = this.toLowerCase();
    if(ignoreDiacritics){
      thisText = thisText.normalize();
    }
    //Break the query
    List<String> brokenQuery = query.split(" ");
    //Declare the variables required for the loop
    int i = 0;
    bool foundInstance = false;
    //Loop to search for matches
    while(foundInstance == false && i < brokenQuery.length){
      String searchQuery = brokenQuery[i];
      //Prevent "" from counting as an instance with && searchQuery != ""
      if(thisText.indexOf(searchQuery) != -1 && searchQuery != ""){
        foundInstance = true;
      }
      i++;
    }
    return foundInstance;
  }
  ///Get how many instances of the query are found
  int instancesOf(
      ///Search query
      String query,
      ///Ignore diacritical symbols. Example ñ matches n. This requires extra time and computing power.
      [bool ignoreDiacritics = false,]
    ){
    ///Make the query lower case
    query = query.toLowerCase();
    if(ignoreDiacritics){
      query = query.normalize();
    }
    //Make the String to be searched lower case
    String thisText = this.toLowerCase();
    if(ignoreDiacritics){
      thisText = thisText.normalize();
    }
    //Break the query
    List<String> brokenQuery = query.split(" ");
    //Declare the variables required for the loop
    int foundInstances = 0;
    brokenQuery.forEach((searchQuery) {
      //Prevent "" from counting as an instance with && searchQuery != ""
      if(searchQuery != ""){
        foundInstances += RegExp(searchQuery).allMatches(thisText).length;
      }
    });
    //Return the result
    return foundInstances;
  }
}
