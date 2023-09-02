import 'dart:math';
import 'package:flutter/material.dart';

void main() {
   return runApp(
     MaterialApp(
       home: Scaffold(
         backgroundColor: Colors.red,
         appBar: AppBar(
           title: Text('DICEE'),
           backgroundColor: Colors.red,
         ),
         body: DicePage(),
       ),
     ),
   );
}
class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftimage=5;
  int rightimage=6;
  void diceface(){
    setState(() {
      leftimage=Random().nextInt(6)+1;
      rightimage=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context){
    return Center(
      child: Row(
        children: [
          Expanded(
              child:TextButton(
                  onPressed: (){
                    diceface();
                  },
                  child: Image.asset('images/dice$leftimage.png'))
          ),
          Expanded(
              child:TextButton(
                  onPressed: (){
                    diceface();
                  },
                  child: Image.asset('images/dice$rightimage.png'))
          ),
        ],
      ),
    );
  }
}

