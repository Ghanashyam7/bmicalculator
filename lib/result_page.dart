import 'package:bmicalculator/bmi_formula.dart';
import 'package:bmicalculator/bottom_button.dart';
import 'package:bmicalculator/container_box.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final calculatebmi;
  final getResult;
  final getInterpretation;

  ResultPage(
      {Key? key,
      required this.calculatebmi,
      required this.getResult,
      required this.getInterpretation})
      : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      bottomNavigationBar: const Butt2(),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  widget.getResult,
                  style: const TextStyle(
                      color: Colors.white70, fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  widget.calculatebmi,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(80.0),
                child: Text(widget.getInterpretation,
                    style: const TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
