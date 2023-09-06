import 'package:flutter/material.dart';

class SecondTest extends StatefulWidget {
  const SecondTest({super.key});

  @override
  State<SecondTest> createState() => _SecondTestState();
}

class _SecondTestState extends State<SecondTest> {
  String titleText = "Counter";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titleText),),
      body: Column(
        children: [
          Text(titleText),
          Text(titleText),
          Text(titleText),
          Text(titleText),
          Text('Some Counter'),
          TextButton(onPressed: (){
            setState(() {
              titleText = "Counter1";
            });
          }, child: Text("Change Text"))
        ],
      ),
    );
  }
}