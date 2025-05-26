import 'package:flutter/material.dart';
import 'Calc.dart';
import 'main.dart';

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
              TextField(readOnly: true,
                controller: equation,
                decoration: InputDecoration(label: Text("equation")),
              ),

              TextField(readOnly: true,
                controller: result,
                decoration: InputDecoration(
                  label: Text("resultat"),
                ),
                style: TextStyle(height: 5),

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
                           equation.text='';

                          listNumForAddSub = [];
                          listAddSubOpr = [];

                          assistant1 = [];
                          listOfListNumForMultDiv = [];
                          listMultDivOpr = [];
                          thereIsMultAndDiv1 = false;
                          listNumForMultDiv = [];
                          assistant2 = [];
                          indexMultOrDiv = [];
                        result.text='';
                        },
                        child: Icon(
                          Icons.refresh,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                    height: 2,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.grey,
                      height: 80,
                      child: IconButton(
                        onPressed: () {

                          print(c);
                          c.removeLast();
                          print(c);

                          equation.text='';
                          for (int i = 0; i < c.length; i++) {
                            equation.text = '${equation.text}${c[i]}';
                          }


                        },
                        icon: Icon(Icons.backspace),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(

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
                            print(c);
                            equation.text ?? '';
                            equation.text="${equation.text}7";
                          },
                          child: Text(
                            "7",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  SizedBox(
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
                            equation.text="${equation.text}8";
                          },
                          child: Text(
                            "8",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  SizedBox(
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
                            equation.text="${equation.text}9";
                          },
                          child: Text(
                            "9",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  SizedBox(
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
                            equation.text="${equation.text}*";
                          },
                          child: Text(
                            "*",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
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
                            equation.text="${equation.text}4";
                          },
                          child: Text(
                            "4",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  SizedBox(
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
                            equation.text="${equation.text}5";
                          },
                          child: Text(
                            "5",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  SizedBox(
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
                            equation.text="${equation.text}6";
                          },
                          child: Text(
                            "6",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  SizedBox(
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
                            equation.text="${equation.text}-";
                          },
                          child: Text(
                            "-",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
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
                            equation.text="${equation.text}1";
                          },
                          child: Text(
                            "1",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  SizedBox(
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
                            equation.text="${equation.text}2";
                          },
                          child: Text(
                            "2",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  SizedBox(
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
                            equation.text="${equation.text}3";
                          },
                          child: Text(
                            "3",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  SizedBox(
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
                            equation.text="${equation.text}+";
                          },
                          child: Text(
                            "+",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
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
                            equation.text="${equation.text}0";
                          },
                          child: Text(
                            "0",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  SizedBox(
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
                            equation.text="${equation.text}.";
                          },
                          child: Text(
                            ",",
                            style: TextStyle(fontSize: 40, color: Colors.black),
                          )),
                    ),
                  ),
                  SizedBox(
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
                            equation.text="${equation.text}/";
                          },
                          child: Text(
                            "/",
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 2,
                    height: 2,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                          onPressed: () {
                            divParentEquationIntoAdditionAndSubtraction(equation.text);
                            determineMultAndDivOperationAndItsLocation();
                            solvingMultiplicationAndDivisionEquations();


                            result.text=solveOverallEquation();
                          },
                          child: Text(
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

