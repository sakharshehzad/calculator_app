import 'package:calculator_app/components/Colored_button.dart';
import 'package:calculator_app/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userinput = '';
  var answer = '';
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 100,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        userinput.toString(),
                        style:
                            const TextStyle(fontSize: 45, color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        answer.toString(),
                        style:
                            const TextStyle(fontSize: 45, color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ColoredButton(
                        title: 'AC',
                        onPress: () {
                          userinput = '';
                          answer = '';
                          setState(() {});
                        },
                      ),
                      ColoredButton(
                          title: 'DEL',
                          onPress: () {
                            if (userinput.length >= 1) {
                              userinput =
                                  userinput.substring(0, userinput.length - 1);
                              setState(() {});
                            }
                          }),
                      ColoredButton(
                        title: '+/-',
                        onPress: () {
                          if (userinput.isNotEmpty) {
                            if (userinput[0] != '-') {
                              userinput = '-' + userinput;
                            } else if (userinput[0] == '-') {
                              userinput =
                                  userinput.substring(1, userinput.length);
                            }
                            setState(() {});
                          }
                        },
                      ),
                      ColoredButton(
                        title: '/',
                        onPress: () {
                          if (answer.isNotEmpty) {
                            userinput = answer;
                            answer = '';
                          }
                          if (userinput.isNotEmpty) {
                            if (userinput[userinput.length - 1] != '/' &&
                                userinput[userinput.length - 1] != '*' &&
                                userinput[userinput.length - 1] != '+' &&
                                userinput[userinput.length - 1] != '-') {
                              userinput += '/';
                            }
                          }

                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButton(
                        title: '7',
                        onPress: () {
                          if (answer.isNotEmpty) {
                            answer = '';
                          }
                          userinput += '7';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '8',
                        onPress: () {
                          if (answer.isNotEmpty) {
                            answer = '';
                          }
                          userinput += '8';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '9',
                        onPress: () {
                          if (answer.isNotEmpty) {
                            answer = '';
                          }
                          userinput += '9';
                          setState(() {});
                        },
                      ),
                      ColoredButton(
                        title: 'X',
                        onPress: () {
                          if (answer.isNotEmpty) {
                            userinput = answer;
                            answer = '';
                          }
                          if (userinput.isNotEmpty) {
                            if (userinput[userinput.length - 1] != '/' &&
                                userinput[userinput.length - 1] != '*' &&
                                userinput[userinput.length - 1] != '+' &&
                                userinput[userinput.length - 1] != '%' &&
                                userinput[userinput.length - 1] != '-') {
                              userinput += '*';
                            }
                          }
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButton(
                        title: '4',
                        onPress: () {
                          if (answer.isNotEmpty) {
                            answer = '';
                          }
                          userinput += '4';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '5',
                        onPress: () {
                          if (answer.isNotEmpty) {
                            answer = '';
                          }
                          userinput += '5';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '6',
                        onPress: () {
                          if (answer.isNotEmpty) {
                            answer = '';
                          }
                          userinput += '6';
                          setState(() {});
                        },
                      ),
                      ColoredButton(
                        title: '-',
                        onPress: () {
                          if (answer.isNotEmpty) {
                            userinput = answer;
                            answer = '';
                          }
                          if (userinput.isNotEmpty) {
                            if (userinput[userinput.length - 1] != '/' &&
                                userinput[userinput.length - 1] != '*' &&
                                userinput[userinput.length - 1] != '+' &&
                                userinput[userinput.length - 1] != '%' &&
                                userinput[userinput.length - 1] != '-') {
                              userinput += '-';
                            }
                          }
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButton(
                        title: '1',
                        onPress: () {
                          if (answer.isNotEmpty) {
                            answer = '';
                          }
                          userinput += '1';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '2',
                        onPress: () {
                          if (answer.isNotEmpty) {
                            answer = '';
                          }
                          userinput += '2';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '3',
                        onPress: () {
                          if (answer.isNotEmpty) {
                            answer = '';
                          }
                          userinput += '3';
                          setState(() {});
                        },
                      ),
                      ColoredButton(
                        title: '+',
                        onPress: () {
                          if (answer.isNotEmpty) {
                            userinput = answer;
                            answer = '';
                          }
                          if (userinput.isNotEmpty) {
                            if (userinput[userinput.length - 1] != '/' &&
                                userinput[userinput.length - 1] != '*' &&
                                userinput[userinput.length - 1] != '+' &&
                                userinput[userinput.length - 1] != '%' &&
                                userinput[userinput.length - 1] != '-') {
                              userinput += '+';
                            }
                          }

                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyButton(
                        title: '%',
                        onPress: () {
                          if (userinput.isNotEmpty) {
                            if (userinput[userinput.length - 1] != '/' &&
                                userinput[userinput.length - 1] != '*' &&
                                userinput[userinput.length - 1] != '+' &&
                                userinput[userinput.length - 1] != '%' &&
                                userinput[userinput.length - 1] != '-') {
                              userinput += '%';
                            }
                          }
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '0',
                        onPress: () {
                          if (answer.isNotEmpty) {
                            answer = '';
                          }
                          userinput += '0';
                          setState(() {});
                        },
                      ),
                      MyButton(
                        title: '.',
                        onPress: () {
                          if (userinput.contains('.')) {
                          } else {
                            userinput += '.';
                            setState(() {});
                          }
                        },
                      ),
                      ColoredButton(
                        title: '=',
                        onPress: () {
                          if (userinput.isNotEmpty) {
                            equalPress();
                            userinput = '';
                            // userinput = answer;
                            // answer = '';
                            setState(() {});
                          }
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void equalPress() {
    Parser p = Parser();
    Expression expression = p.parse(userinput.toString());
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
