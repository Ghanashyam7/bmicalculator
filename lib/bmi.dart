import 'package:bmicalculator/bmi_formula.dart';
import 'package:bmicalculator/bottom_button.dart';
import 'package:bmicalculator/result_page.dart';
import 'package:flutter/material.dart';
import 'container_box.dart';

enum Gender {
  male,
  female,
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  late Gender selectedGender;
  double _currentSliderValue = 0.0;
  double _weight = 0.0;
  double _age = 0.0;
  var touch = false;
  double result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1c2135),
        title: Center(child: Text("BMI CALCULATOR")),
      ),
      body: Container(
        color: Color(0xff1c2135),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          touch == true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: touch == true
                                    ? Colors.white
                                    : Colors.black)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.female,
                              size: 80,
                              color: Colors.white,
                            ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          touch == true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: touch == true
                                    ? Colors.white
                                    : Colors.black)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.male,
                              size: 80,
                              color: Colors.white,
                            ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white70),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white70),
                          ),
                          Text(
                            _currentSliderValue.round().toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.white70),
                          ),
                          Slider(
                            value: _currentSliderValue,
                            min: 0,
                            max: 250,
                            divisions: 250,
                            label: _currentSliderValue.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                _currentSliderValue = value;
                                print(_currentSliderValue);
                              });
                            },
                          ),
                        ],
                      ),
                      width: 200,
                      height: 300,
                      color: Colors.black26,
                    ),
                  )),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '$_weight',
                            style: TextStyle(color: Colors.white70),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.add,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _weight += 1;
                                    });
                                  },
                                ),
                              ),
                              CircleAvatar(
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.remove,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _weight -= 1;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      color: Colors.black26,
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '$_age',
                            style: TextStyle(color: Colors.white70),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              CircleAvatar(
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.add,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _age += 1;
                                    });
                                  },
                                ),
                              ),
                              CircleAvatar(
                                child: IconButton(
                                  icon: const Icon(
                                    Icons.remove,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _age -= 1;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      color: Colors.black26,
                    ),
                  )),
                ],
              ),
            ),
            BottomButt(weight: _weight, height: _currentSliderValue),
          ],
        ),
      ),
    );
  }
}
