import 'package:flutter/material.dart';

class Slide extends StatefulWidget {
  const Slide({Key? key}) : super(key: key);

  @override
  _SlideState createState() => _SlideState();
}

class _SlideState extends State<Slide> {
  double _currentSliderValue = 1;
  late final int? divisions;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Height',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70),),
            Slider(value: _currentSliderValue,
                min: 0,
                max: 250,
                divisions: 250,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
              setState(() {
                _currentSliderValue = value;
              });
            }),
          ],
        ),
        width: 400,
        height: 300,
        color: Colors.pink,
      ),
    );
  }
}
