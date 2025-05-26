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
  TextEditingController equation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CounterApp"),
        backgroundColor: Colors.green,
      ),
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
                  decoration: const InputDecoration(
                      label: Text("equation",style: TextStyle(fontSize: 30,color: Colors.black),), border: InputBorder.none),
                  style: TextStyle(height: 3,color: Colors.black),
                ),
              ),
              // const SizedBox(
              //   height: 30,
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  readOnly: true,
                  controller: result,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    label: Text("result :",style: TextStyle(fontSize: 30,color: Colors.black),),

                  ),
                  style: const TextStyle(height: 3,fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                        onPressed: () {
                          c.clear();
                          equation.text = '';

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
                        child: const Icon(
                          Icons.refresh,
                          color: Colors.black,
                          size: 30,
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
                      color: Colors.grey,
                      height: 80,
                      child: IconButton(
                        onPressed: () {
                          c.removeLast();

                          equation.text = '';
                          for (int i = 0; i < c.length; i++) {
                            equation.text = '${equation.text}${c[i]}';
                          }
                        },
                        icon: const Icon(Icons.backspace),
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
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                          onPressed: () {
                            c.add(7);
                            equation.text ?? '';
                            equation.text = "${equation.text}7";
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
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                          onPressed: () {
                            c.add(8);

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
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                          onPressed: () {
                            c.add(9);

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
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                          onPressed: () {
                            c.add('*');

                            equation.text ?? '';
                            equation.text = "${equation.text}*";
                          },
                          child: const Text(
                            "*",
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
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                          onPressed: () {
                            c.add(4);

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
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                          onPressed: () {
                            c.add(5);

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
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                          onPressed: () {
                            c.add(6);

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
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                          onPressed: () {
                            c.add('-');
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
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                          onPressed: () {
                            c.add(1);
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
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                          onPressed: () {
                            c.add(2);

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
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                          onPressed: () {
                            c.add(3);

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
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                          onPressed: () {
                            c.add('+');

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
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                          onPressed: () {
                            c.add(0);

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
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                          onPressed: () {
                            c.add('.');

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
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                          onPressed: () {
                            c.add('/');

                            equation.text ?? '';
                            equation.text = "${equation.text}/";
                          },
                          child: const Text(
                            "/",
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
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                          onPressed: () {
                            divParentEquationIntoAdditionAndSubtraction(
                                equation.text);
                            determineMultAndDivOperationAndItsLocation();
                            solvingMultiplicationAndDivisionEquations();

                            result.text = solveOverallEquation();
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
