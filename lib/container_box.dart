import 'package:bmicalculator/bmi.dart';
import 'package:flutter/material.dart';

class  Butt2 extends StatelessWidget {
  const Butt2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () { Navigator.pop(context,
          MaterialPageRoute(builder: (context) => Myapp()));

      },
      child: Container(
        color: Colors.pink,
        height: 60,
        child: Center(
          child: Column(
          children: [
            Text('Re-Calculate',style: TextStyle(color: Colors.white,),

            ),
            Text('ghaj',style: TextStyle(color: Colors.black),),
          ],

        ),
      ),
    ),
    );
  }
}