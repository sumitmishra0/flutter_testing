import 'package:flutter/material.dart';

class ThirdTestWidget extends StatefulWidget {
  const ThirdTestWidget({super.key});

  @override
  State<ThirdTestWidget> createState() => _ThirdTestWidgetState();
}

class _ThirdTestWidgetState extends State<ThirdTestWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third'),
      ),
      body: Column(
        children: [
          Icon(Icons.add),
          // Icon(Icons.square),
          // Text(counter.toString()),
          // IconButton(onPressed: (){
          //   counter = counter + 1;
          //   setState(() {
              
          //   });
          // }, icon: Icon(Icons.add))
        ],
      ),
    );
  }
}