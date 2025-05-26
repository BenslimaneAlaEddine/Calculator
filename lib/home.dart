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
              SizedBox(
                width: 400,
                child: Card(
                    color: Colors.grey,
                    child: Text(
                      "CLC: $z",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    )),
              ),
              Container(
                  padding: const EdgeInsets.only(bottom: 100, right: 200),
                  child: Text(
                    "Result: "
                    "$r",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  )),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.grey,
                      height: 80,
                      child: TextButton(
                        onPressed: () {
                          c.clear();
                          z = '';
                          r = '';
                           listNumForAddSub= [];
                         listAddSubOpr= [];

                         assistant1=[];
                         listOfListNumForMultDiv = [];
                         listMultDivOpr = [];
                          thereIsMultAndDiv1 = false;
                          listNumForMultDiv= [];
                          assistant2= [];
                          indexMultOrDiv = [];
                          setState(() {
                            z = z;
                            r = r;
                          });
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
                         // List k = z!.split(RegExp(''));
                         // print("k=$k");
                          //String s = '';
                          print(c);
                          c.removeLast();
                          print(c);
                          print("z: $z");
                          z = '';
                          for (int i = 0; i < c.length; i++) {
                            z = z! + '${c[i]}';
                          }

                          print("z: $z");
                          //hnaaaaaa rani ndir bach nfacer
                          // for (int i = 0; i < k.length; i++) {
                          //   if (i == k.length - 1) break;
                          //   s = s + k[i];
                          // }
                          // if(s.isEmpty ){c=[];}
                          // else c = s.split('');
                          setState(() {
                            z;
                          });
                        },
                        icon: Icon(Icons.backspace),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                // width: 2,
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
                            z ?? '';
                            setState(() {
                              z = '${z!}7';
                            });
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
                            z ?? '';
                            setState(() {
                              z = '${z!}8';
                            });
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
                            z ?? '';
                            setState(() {
                              z = '${z!}9';
                            });
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
                            z ?? '';
                            setState(() {
                              z = '${z!}*';
                            });
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
                            z ?? '';
                            setState(() {
                              z = '${z!}4';
                            });
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
                            z ?? '';
                            setState(() {
                              z = '${z!}5';
                            });
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
                            z ?? '';
                            setState(() {
                              z = '${z!}6';
                            });
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
                            z ?? '';
                            setState(() {
                              z = '${z!}-';
                            });
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
                            z ?? '';
                            setState(() {
                              z = '${z!}1';
                            });
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
                            z ?? '';
                            setState(() {
                              z = '${z!}2';
                            });
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
                            z ?? '';
                            setState(() {
                              z = '${z!}3';
                            });
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
                            z ?? '';
                            setState(() {
                              z = '${z!}+';
                            });
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
                            z ?? '';
                            setState(() {
                              z = '${z!}0';
                            });
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
                            z ?? '';
                            setState(() {
                              z = '${z!}.';
                            });
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
                            z ?? '';
                            setState(() {
                              z = '${z!}/';
                            });
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
                            divParentEquationIntoAdditionAndSubtraction();
                            determineMultAndDivOperationAndItsLocation();
                            solvingMultiplicationAndDivisionEquations();

                            setState(() {

                                r = solveOverallEquation();
                              });
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

String? r = "";
String? z = '';
List c = [];
late int x;
int? y;
int i = 0;

String calc() {
  x = 0;
  for (int i = 0; i < c.length; i += 2) {
    x = (x + c[i]).toInt();
  }
  return x.toString();
//if (c[i] is num){ }
}
