
import 'package:bmicalculator/bmi_formula.dart';
import 'package:bmicalculator/result_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BottomButt extends StatefulWidget {
  final weight;
  final height;
   BottomButt({Key? key, this.weight, this.height}) : super(key: key);

  @override
  State<BottomButt> createState() => _BottomButtState();
}

class _BottomButtState extends State<BottomButt> {
  int height = 0;
  int weight = 0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

        bmiLogic calc =
      bmiLogic(height: widget.height, weight: widget.weight);
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ResultPage(
            calculatebmi: calc.calculatebmi(),
            getResult: calc.getResult(),
            getInterpretation: calc.getInterpretation(),
          ),),);

      },
      child: Container(
        color: Colors.pink,
          height: 60,
            child: const Center(
                child:Text('Calculate',style: TextStyle(color: Colors.white,),

          ),

              ),
      ),
    );
  }
}