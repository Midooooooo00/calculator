import 'dart:ui';
import 'package:flutter/material.dart';

class mainscreen extends StatefulWidget {
  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  String result = "0";
  String finalresult = "";
  double num1 = 0.0;
  double num2 = 0.0;

  String Opr = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF170117),
          title: const Text(
            "Calclutor",
            style: const TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFF170117),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "$finalresult",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Container(
                        width: double.infinity,
                        height: 3,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "$result",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ButtonStyle(
                    txtbutton: "AC",
                    color: Color(0xFF170117),
                    count: onclicknominal,
                  ),
                ),
                Expanded(
                  child: ButtonStyle(
                    txtbutton: "=",
                    color: Color(0xFF170117),
                    count: onclicknominal,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ButtonStyle(
                    txtbutton: "7",
                    color: Color(0xFF6F0C7F),
                    count: onclicknominal,
                  ),
                ),
                Expanded(
                  child: ButtonStyle(
                    txtbutton: "8",
                    color: Color(0xFF6F0C7F),
                    count: onclicknominal,
                  ),
                ),
                Expanded(
                  child: ButtonStyle(
                    txtbutton: "9",
                    color: Color(0xFF6F0C7F),
                    count: onclicknominal,
                  ),
                ),
                Expanded(
                  child: ButtonStyle(
                    txtbutton: "+",
                    color: Color(0xFF312331),
                    count: onclicknominal,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ButtonStyle(
                    txtbutton: "4",
                    color: Color(0xFF6F0C7F),
                    count: onclicknominal,
                  ),
                ),
                Expanded(
                  child: ButtonStyle(
                    txtbutton: "5",
                    color: Color(0xFF6F0C7F),
                    count: onclicknominal,
                  ),
                ),
                Expanded(
                  child: ButtonStyle(
                    txtbutton: "6",
                    color:Color(0xFF6F0C7F),
                    count: onclicknominal,
                  ),
                ),
                Expanded(
                  child: ButtonStyle(
                    txtbutton: "-",
                    color: Color(0xFF312331),
                    count: onclicknominal,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ButtonStyle(
                    txtbutton: "1",
                    color: Color(0xFF6F0C7F),
                    count: onclicknominal,
                  ),
                ),
                Expanded(
                  child: ButtonStyle(
                    txtbutton: "2",
                    color: Color(0xFF6F0C7F),
                    count: onclicknominal,
                  ),
                ),
                Expanded(
                  child: ButtonStyle(
                    txtbutton: "3",
                    color: Color(0xFF6F0C7F),
                    count: onclicknominal,
                  ),
                ),
                Expanded(
                  child: ButtonStyle(
                    txtbutton: "*",
                    color: Color(0xFF312331),
                    count: onclicknominal,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ButtonStyle(
                    txtbutton: "0",
                    color: Color(0xFF170117),
                    count: onclicknominal,
                  ),
                ),
                Expanded(
                  child: ButtonStyle(
                    txtbutton: ".",
                    color: Color(0xFF312331),
                    count: onclicknominal,
                  ),
                ),
                Expanded(
                  child: ButtonStyle(
                    txtbutton: "%",
                    color: Color(0xFF312331),
                    count: onclicknominal,
                  ),
                ),
                Expanded(
                  child: ButtonStyle(
                    txtbutton: "/",
                    color: Color(0xFF312331),
                    count: onclicknominal,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void onclicknominal(String butonvalue) {
    if (butonvalue == "AC") {
      result = "";
      finalresult = "";
      num1 = 0.0;
      num2 = 0.0;
      Opr = "";
    } else if (butonvalue == "+" ||
        butonvalue == "-" ||
        butonvalue == "*" ||
        butonvalue == "/" ||
        butonvalue == "%") {
      Opr = butonvalue;
      num1=double.parse(finalresult);
      finalresult = "";
      result=num1.toString();
      result+=butonvalue;
    } else if (butonvalue == ".") {
      finalresult.contains(".") ? {} : finalresult += butonvalue;
    }else if (butonvalue == "="){
      num2 = double.parse(finalresult);
      result += finalresult;
      switch(Opr){
        case "+" : {finalresult = (num1+num2).toString();} break;
        case "-" : {finalresult = (num1-num2).toString();} break;
        case "*" : {finalresult = (num1*num2).toString();} break;
        case "/" : {finalresult = (num1/num2).toString();} break;
        case "%" : {finalresult = (num1/num2*100).toString();} break;
      }
    }
    else {
      finalresult += butonvalue;
    }
    setState(() {});
  }
}

//Button_Style
//Colors.deepOrange
class ButtonStyle extends StatelessWidget {
  String txtbutton = "";
  Color color;
  Function count;

  ButtonStyle(
      {required this.txtbutton, required this.color, required this.count});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
          onPressed: () {
          count(txtbutton);
        },
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
            ),
            primary: color,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            textStyle:
                const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        child: Text(
          txtbutton,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
