import 'dart:typed_data';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';
import 'Calc.dart';

class MyStateLess extends StatelessWidget {
  const MyStateLess({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyStateFul(),
    );
  }
}

class MyStateFul extends StatefulWidget {
  const MyStateFul({super.key});

  @override
  // State<StatefulWidget> createState() => MyState();
  MyState createState() => MyState();
}

class MyState extends State<MyStateFul> {
  final TextEditingController equation = TextEditingController();
  bool egal = false;

  @override
  void initState() {
    super.initState();
    equation.addListener(() {
      if(equation.text.isNotEmpty){
      List x = equation.text.split('');
      if (x.last == '+' || x.last == '-' || x.last == '×' || x.last == '÷') {
        x.removeLast();
      }
      divParentEquationIntoAdditionAndSubtraction(x
          .toString()
          .replaceAll('[', '')
          .replaceAll(']', '')
          .replaceAll(' ', '')
          .replaceAll(',', ''));
      determineMultAndDivOperationAndItsLocation();
      solvingMultiplicationAndDivisionEquations();
      result.text = solveOverallEquation();}
    });
  }

  @override
  void dispose() {
    equation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    readOnly: true,
                    controller: equation,
                    style: TextStyle(
                      height: 1,
                      color: Colors.black,
                      fontSize: egal ? 20 : 30,
                    ),
                    onChanged: (v) {
                      // result.text='3';
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  readOnly: true,
                  controller: result,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    label: Text(
                      "result :",
                      style: TextStyle(
                          fontSize: 30, color: Colors.black, height: 1),
                    ),
                  ),
                  style: TextStyle(
                      height: 3,
                      fontSize: egal ? 30 : 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: TextButton(
                        onPressed: () {
                          c.clear();
                          equation.text = '';
                          // equation.value;
                          listNumForAddSub = [];
                          listAddSubOpr = [];
                          assistant1 = [];
                          listOfListNumForMultDiv = [];
                          listMultDivOpr = [];
                          thereIsMultAndDiv1 = false;
                          listNumForMultDiv = [];
                          assistant2 = [];
                          indexMultOrDiv = [];
                          result.text = '';
                        },
                        child: const Text(
                          "AC",
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                    height: 2,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: IconButton(
                        onPressed: () {
                          if (c.isNotEmpty) {
                            c.removeLast();
                            String equationAssistant = '';
                            // equation.text = '';
                            for (int i = 0; i < c.length; i++) {
                              equationAssistant = '$equationAssistant${c[i]}';
                            }
                            equation.text = equationAssistant;
                          }
                          setState(() {
                            egal = false;
                          });
                        },
                        icon: const Icon(
                          Icons.backspace,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              egal = false;
                            });
                            c.add(7);
                            // equation.text ?? '';
                            // equation.text = "${equation.text}7";
                          },
                          child: const Text(
                            "7",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                    height: 2,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: TextButton(
                          onPressed: () {
                            c.add(8);
                            setState(() {
                              egal = false;
                            });
                            equation.text ?? '';
                            equation.text = "${equation.text}8";
                          },
                          child: const Text(
                            "8",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                    height: 2,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: TextButton(
                          onPressed: () {
                            c.add(9);
                            setState(() {
                              egal = false;
                            });
                            equation.text ?? '';
                            equation.text = "${equation.text}9";
                          },
                          child: const Text(
                            "9",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                    height: 2,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: TextButton(
                          onPressed: () {
                            c.add('×');
                            setState(() {
                              egal = false;
                            });
                            equation.text ?? '';
                            equation.text = "${equation.text}×";
                          },
                          child: const Text(
                            "×",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 2,
                height: 2,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: TextButton(
                          onPressed: () {
                            c.add(4);
                            setState(() {
                              egal = false;
                            });
                            equation.text ?? '';
                            equation.text = "${equation.text}4";
                          },
                          child: const Text(
                            "4",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                    height: 2,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: TextButton(
                          onPressed: () {
                            c.add(5);
                            setState(() {
                              egal = false;
                            });
                            equation.text ?? '';
                            equation.text = "${equation.text}5";
                          },
                          child: const Text(
                            "5",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                    height: 2,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: TextButton(
                          onPressed: () {
                            c.add(6);
                            setState(() {
                              egal = false;
                            });
                            equation.text ?? '';
                            equation.text = "${equation.text}6";
                          },
                          child: const Text(
                            "6",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                    height: 2,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: TextButton(
                          onPressed: () {
                            c.add('-');
                            setState(() {
                              egal = false;
                            });
                            equation.text ?? '';
                            equation.text = "${equation.text}-";
                          },
                          child: const Text(
                            "-",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 2,
                height: 2,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: TextButton(
                          onPressed: () {
                            c.add(1);
                            setState(() {
                              egal = false;
                            });
                            equation.text ?? '';
                            equation.text = "${equation.text}1";
                          },
                          child: const Text(
                            "1",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                    height: 2,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: TextButton(
                          onPressed: () {
                            c.add(2);
                            setState(() {
                              egal = false;
                            });
                            equation.text ?? '';
                            equation.text = "${equation.text}2";
                          },
                          child: const Text(
                            "2",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                    height: 2,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: TextButton(
                          onPressed: () {
                            c.add(3);
                            setState(() {
                              egal = false;
                            });
                            equation.text ?? '';
                            equation.text = "${equation.text}3";
                          },
                          child: const Text(
                            "3",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                    height: 2,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: TextButton(
                          onPressed: () {
                            c.add('+');
                            setState(() {
                              egal = false;
                            });
                            equation.text ?? '';
                            equation.text = "${equation.text}+";
                          },
                          child: const Text(
                            "+",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 2,
                height: 2,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: TextButton(
                          onPressed: () {
                            c.add(0);
                            setState(() {
                              egal = false;
                            });
                            equation.text ?? '';
                            equation.text = "${equation.text}0";
                          },
                          child: const Text(
                            "0",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                    height: 2,
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: TextButton(
                          onPressed: () {
                            c.add('.');
                            setState(() {
                              egal = false;
                            });
                            equation.text ?? '';
                            equation.text = "${equation.text}.";
                          },
                          child: const Text(
                            ",",
                            style: TextStyle(fontSize: 40, color: Colors.black),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                    height: 2,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: TextButton(
                          onPressed: () {
                            c.add('÷');
                            setState(() {
                              egal = false;
                            });
                            equation.text ?? '';
                            equation.text = "${equation.text}÷";
                          },
                          child: const Text(
                            "÷",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                    height: 2,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFFCDCFCF),
                      ),
                      height: 75,
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              egal = true;
                            });
                            try {
                              divParentEquationIntoAdditionAndSubtraction(
                                  equation.text);
                              determineMultAndDivOperationAndItsLocation();
                              solvingMultiplicationAndDivisionEquations();

                              result.text = solveOverallEquation();
                            } catch (e) {
                              result.text = "error";
                            }
                          },
                          child: const Text(
                            "=",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

TextEditingController result = TextEditingController();
List c = [];
