import 'package:flutter/material.dart';
class ButtonStyle extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
            primary: Colors.lightBlueAccent,
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            textStyle: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold)),

        child:const Text("1") ,
    ),
      );
  }
}

