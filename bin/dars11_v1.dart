import 'dart:io';

import 'package:date_format/date_format.dart';
import 'package:math_expressions/math_expressions.dart';

void main(List<String> args) {
print("son hisoblash");
var userInput = stdin.readLineSync();

equalPressed(userInput!);







// List<String> characterlar = ["1","2","3","4","+","7","8","9","-","1","0","7"];
// print(hisobla(characterlar));
}


hisobla(List<String> list){
List elementlar = [];
List<int> butunSonlar = [];
List belgilar = [];

int javob =0;
for (var i in list) {
  switch (i) {
    case "+":
      print(elementlar);
      var butunSon = int.parse(elementlar.join());
      elementlar.clear();
      butunSonlar.add(butunSon);
      belgilar.add("+");
      break;
    case  "-":
      var butunSon = int.parse(elementlar.join());
      elementlar.clear();
      butunSonlar.add(butunSon);
      belgilar.add("-");
      print(i);
      break;
    default:
      print(i);
      elementlar.add(i); 
  }
  
  
}

if (elementlar.isNotEmpty) {
       var butunSon = int.parse(elementlar.join());
      elementlar.clear();
      butunSonlar.add(butunSon);
  }
  print(butunSonlar);

  javob=butunSonlar[0];
for (var i = 0; i < belgilar.length; i++) {
    print(i);
  
  switch (belgilar[i]) {
    case "+":
      javob += butunSonlar[i+1];
      break;
    case "-":
      javob -= butunSonlar[i+1]; 
  }

}

return javob;
}






















void equalPressed(String userInput){
  String finalUserInput = userInput;
  Parser p = Parser();
 
  //
  Expression exp = p.parse(finalUserInput);
  String simpleAnswer = exp.simplify().toString();
  

  print(exp.evaluate(EvaluationType.REAL,ContextModel()));  
}