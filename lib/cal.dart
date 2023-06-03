import 'package:flutter/material.dart';
import 'package:mechanicalcalc/color.dart';

import 'color.dart';
import 'color.dart';
import 'color.dart';

class Cal extends StatefulWidget {
  const Cal({Key? key}) : super(key: key);

  @override
  State<Cal> createState() => _CalState();
}

class _CalState extends State<Cal> {
  String operand1 = "";
  String operand2 = "";
  bool isOperatorClicked = false;
  TextEditingController txtResult = TextEditingController();
  String selOperator = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: txtResult,
            textAlign: TextAlign.end,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(blac),
                        ),
                        onPressed: () {
                          operand1 = "";
                          operand2 = "";
                          selOperator = "";
                          isOperatorClicked = false;
                          txtResult.text = "";
                        },
                        child: Text(
                          'C',
                          style: as,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(blac),
                        ),
                        onPressed: () {

                          if(isOperatorClicked)
                          {
                            var x = int.parse(operand2);
                            if(x.isNegative)
                              {
                                operand2 = x.abs().toString();
                              }
                            else
                              {
                                operand2 = (x * -1).toString();
                              }

                            txtResult.text = operand2;
                          }
                          else
                          {
                            var x = int.parse(operand1);
                            if(x.isNegative)
                            {
                              operand1 = x.abs().toString();
                            }
                            else
                            {
                              operand1 = (x * -1).toString();
                            }

                            txtResult.text = operand1;
                          }
                        },
                        child: Text(
                          '+-',
                          style: as,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(blac),
                        ),
                        onPressed: () {

                          if(isOperatorClicked)
                            {
                             operand2 = (int.parse(operand2)/100).toString();
                             txtResult.text = operand2;
                            }
                          else
                            {
                              operand1 = (int.parse(operand1) / 100).toString();
                              txtResult.text = operand1;
                            }
                        },
                        child: Text(
                          '%',
                          style: as,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(yel),
                        ),
                        onPressed: () {
                          isOperatorClicked = true;
                          selOperator = "÷";
                        },
                        child: Text(
                          "÷",
                          style: as,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(blac),
                        ),
                        onPressed: () {
                          if (isOperatorClicked) {
                            operand2 += "7";
                            txtResult.text = operand2;
                          } else {
                            operand1 += "7";
                            txtResult.text = operand1;
                          }
                          print("OperatorClicked$isOperatorClicked");
                          print("first$operand1");
                          print("second$operand2");
                        },
                        child: Text(
                          '7',
                          style: as,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(blac),
                        ),
                        onPressed: () {
                          if (isOperatorClicked) {
                            operand2 += "8";
                            txtResult.text = operand2;
                          } else {
                            operand1 += "8";
                            txtResult.text = operand1;
                          }
                          print("OperatorClicked$isOperatorClicked");
                          print("first$operand1");
                          print("second$operand2");
                        },
                        child: Text(
                          '8',
                          style: as,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(blac),
                        ),
                        onPressed: () {
                          if (isOperatorClicked) {
                            operand2 += "9";
                            txtResult.text = operand2;
                          } else {
                            operand1 += "9";
                            txtResult.text = operand1;
                          }
                          print("OperatorClicked$isOperatorClicked");
                          print("first$operand1");
                          print("second$operand2");
                        },
                        child: Text(
                          '9',
                          style: as,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(yel),
                        ),
                        onPressed: () {
                          isOperatorClicked = true;
                          selOperator = "*";
                        },
                        child: Text(
                          '×',
                          style: as,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(blac),
                        ),
                        onPressed: () {
                          if (isOperatorClicked) {
                            operand2 += "4";
                            txtResult.text = operand1;
                          } else {
                            operand1 += "4";
                            txtResult.text = operand1;
                          }

                          print("OperatorClicked$isOperatorClicked");
                          print("first$operand1");
                          print("second$operand2");
                        },
                        child: Text(
                          '4',
                          style: as,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(blac),
                        ),
                        onPressed: () {
                          if (isOperatorClicked) {
                            operand2 += "5";
                            txtResult.text = operand2;
                          } else {
                            operand1 += "5";
                            txtResult.text = operand1;
                          }
                          print("OperatorClicked$isOperatorClicked");
                          print("first$operand1");
                          print("second$operand2");
                        },
                        child: Text(
                          '5',
                          style: as,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(blac),
                        ),
                        onPressed: () {
                          if (isOperatorClicked) {
                            operand2 += "6";
                            txtResult.text = operand2;
                          } else {
                            operand1 += "6";
                            txtResult.text = operand1;
                          }
                          print("OperatorClicked$isOperatorClicked");
                          print("first$operand1");
                          print("second$operand2");
                        },
                        child: Text(
                          '6',
                          style: as,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(yel),
                        ),
                        onPressed: () {
                          isOperatorClicked = true;
                          selOperator = "-";
                        },
                        child: Text(
                          '-',
                          style: as,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(blac),
                        ),
                        onPressed: () {
                          if (isOperatorClicked) {
                            operand2 += "1";
                            txtResult.text = operand2;
                          } else {
                            operand1 += "1";
                            txtResult.text = operand1;
                          }
                          print("OperatorClicked$isOperatorClicked");
                          print("first$operand1");
                          print("second$operand2");
                        },
                        child: Text(
                          '1',
                          style: as,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(blac),
                        ),
                        onPressed: () {
                          if (isOperatorClicked) {
                            operand2 += "2";
                            txtResult.text = operand2;
                          } else {
                            operand1 += "2";
                            txtResult.text = operand1;
                          }
                          print("OperatorClicked$isOperatorClicked");
                          print("first$operand1");
                          print("second$operand2");
                        },
                        child: Text(
                          '2',
                          style: as,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(blac),
                        ),
                        onPressed: () {
                          if (isOperatorClicked) {
                            operand2 += "3";
                            txtResult.text = operand2;
                          } else {
                            operand1 += "3";
                            txtResult.text = operand1;
                          }
                          print("OperatorClicked$isOperatorClicked");
                          print("first$operand1");
                          print("second$operand2");
                        },
                        child: Text(
                          '3',
                          style: as,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  // color: Colors.black,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(yel),
                        ),
                        onPressed: () {
                          isOperatorClicked = true;
                          selOperator = "+";
                        },
                        child: Text(
                          '+',
                          style: as,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 60,
                width: 184.3,
                // color: Colors.grey,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(blac),
                      ),
                      onPressed: () {
                        if (isOperatorClicked) {
                          operand2 += "0";
                          txtResult.text = operand2;
                        } else {
                          operand1 += "0";
                          txtResult.text = operand1;
                        }
                        print("OperatorClicked$isOperatorClicked");
                        print("first$operand1");
                        print("second$operand2");
                      },
                      child: Text('0', style: as),
                    ),
                  ],
                ),
              ),
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(blac),
                      ),
                      onPressed: () {
                        if (isOperatorClicked) {
                          operand2 += ".";
                          txtResult.text = operand2;
                        } else {
                          operand1 += ".";
                          txtResult.text = operand1;
                        }
                        print("OperatorClicked$isOperatorClicked");
                        print("first$operand1");
                        print("second$operand2");
                      },
                      child: Text(
                        '.',
                        style: as,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 70,
                width: 70,
                // color: Colors.black,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.orange,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(yel),
                      ),
                      onPressed: () {
/*
                        if (operand1.contains('%') ) {
                         var x = operand1.split('%');
                         operand1 = (double.parse(x[0])/100).toString();
                        }
                        if (operand2.contains('%') ) {
                          var x = operand2.split('%');
                          operand2 = (double.parse(x[0])/100).toString();
                        }*/
                        print(operand1);
                        print(operand2);
                        double first = double.parse(operand1);
                        double second = double.parse(operand2);
                        double result = 0;

                        if (selOperator == "+") {
                          result = first + second;
                        } else if (selOperator == '-') {
                          result = first - second;
                        } else if (selOperator == '*') {
                          result = first * second;
                        } else if (selOperator == '÷') {
                          result = first / second;
                        } else if (selOperator == '+-') {
                          result = first + -second;
                        }


                        txtResult.text = result.toString();
                        operand1 = result.toString();
                        isOperatorClicked = false;
                        operand2 = "";
                      },
                      child: Text(
                        '=',
                        style: as,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
