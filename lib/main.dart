import 'package:calculator/Calcolator/Screen.dart';
import 'package:flutter/material.dart';
class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return mainscreen();
  }
}
main(){
  runApp(Calculator());
}