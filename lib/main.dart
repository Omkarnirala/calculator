import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: const Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  // _CalculatorState createState() => _CalculatorState();
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output = "0";
  String _input = "";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

  buttonPressed(String buttonText) {
    if (buttonText == "CLEAR") {
      _input = "";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else if (buttonText == "+" || buttonText == "-" || buttonText == "*" || buttonText == "/") {
      num1 = _input.isEmpty ? 0.0 : double.parse(_input);
      operand = buttonText;
      _input += buttonText;
    } else if (buttonText == ".") {
      if (!_input.contains(".")) {
        _input += buttonText;
      }
    } else if (buttonText == "=") {
      num2 = double.parse(_input.split(operand).last);

      switch (operand) {
        case "+":
          _input = (num1 + num2).toString();
          break;
        case "-":
          _input = (num1 - num2).toString();
          break;
        case "*":
          _input = (num1 * num2).toString();
          break;
        case "/":
          _input = (num1 / num2).toString();
          break;
        default:
          break;
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else {
      _input += buttonText;
    }

    setState(() {
      _output = _input;
    });
  }

  Widget buildButton(String buttonText) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(12.0), // Add margin here
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.all(20.0),
          ),
          child: Text(buttonText,
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold
              )
          ),
          onPressed: () => buttonPressed(buttonText),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator')),
      body: Column(children: <Widget>[
        Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 20.0),
            child: Text(_output, style: const TextStyle(fontSize: 48.0))),
        const Expanded(child: Divider()),
        Column(children: [
          Row(children: [
            buildButton("7"),
            buildButton("8"),
            buildButton("9"),
            buildButton("/")
          ]),
          Row(children: [
            buildButton("4"),
            buildButton("5"),
            buildButton("6"),
            buildButton("*")
          ]),
          Row(children: [
            buildButton("1"),
            buildButton("2"),
            buildButton("3"),
            buildButton("-")
          ]),
          Row(children: [
            buildButton("."),
            buildButton("0"),
            buildButton("00"),
            buildButton("+")
          ]),
          Row(children: [
            buildButton("CLEAR"),
            buildButton("=")
          ])
        ])
      ]),
    );
  }
}