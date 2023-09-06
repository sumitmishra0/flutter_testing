// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_testing/main.dart';
import 'package:flutter_testing/second.dart';
import 'package:flutter_testing/third.dart';

// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const MyApp());

//     // Verify that our counter starts at 0.
//     expect(find.text('0'), findsOneWidget);
//     expect(find.text('1'), findsNothing);

//     // Tap the '+' icon and trigger a frame.
//     await tester.tap(find.byIcon(Icons.add));
//     await tester.pump();

//     // Verify that our counter has incremented.
//     expect(find.text('0'), findsNothing);
//     expect(find.text('1'), findsOneWidget);
//   });
// }


// void main() {
//   testWidgets('Search Counter', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(MaterialApp(home: SecondTest()));

//     // Verify that our counter starts at 0.
//     expect(find.text('Counter'), findsNWidgets(5));
//     // expect(find.text('1'), findsNothing);

//     // Tap the '+' icon and trigger a frame.
//     // await tester.tap(find.byIcon(Icons.add));
//     // await tester.pump();

//     // Verify that our counter has incremented.
//     // expect(find.text('0'), findsNothing);
//     // expect(find.text('1'), findsOneWidget);
//   });
// }


// void main(){
//   testWidgets("Just for demo", (WidgetTester tester) async{
//     // Build your text widget
//     await tester.pumpWidget(MaterialApp(home: SecondTest(),));

//     // Find widgets with text counter
//     final counterTextFinder = find.text('Counter');

//     // Find widgets with text Some Counter

//     final someCounterTextFinder = find.text('Some Counter');

//     // find the TextButton with text "Change Text"

//     final changeTextButtonFinder = find.widgetWithText(TextButton, 'Change Text');

//     // Verify that the Counter text is found multiple times

//     expect(counterTextFinder, findsNWidgets(5));

//     // Verify that the Some Counter text is found ones

//     expect(someCounterTextFinder, findsOneWidget);

//     // Tap the ChangeText Button

//     await tester.tap(changeTextButtonFinder);
//     await tester.pump();

//     expect(find.text('Counter1'), findsNWidgets(5));
//     expect(find.text("Some Counter"), findsOneWidget);
//   });
// }


void main() {
  testWidgets("Checking", (WidgetTester tester) async {
   
   await tester.pumpWidget(MaterialApp(home: ThirdTestWidget(),));
  //  final thirdTextFinder = find.text('Third');

    final thirdTextFinder = find.byWidgetPredicate(
      (widget) =>
          widget is Text &&
          widget.data != null && widget.data!.contains("Third"),
    );
  //  final iconCircleFinder = find.byIcon(Icons.add);

    // final iconCircleFinder = find.byWidgetPredicate(
    //   (widget) =>
    //       widget is Icon &&
    //       widget.icon == Icons.add,
    // );

     final iconCircleFinder = find.descendant(
      of: find.byType(ThirdTestWidget),
      matching: find.byIcon(Icons.add),
    );
  //  final iconSquareFinder = find.widgetWithIcon(Icon, Icons.square);
  //  final counterTextFinder = find.text('0');
  //  final iconButtonFinder = find.widgetWithIcon(IconButton, Icons.add);

   expect(thirdTextFinder, findsOneWidget);
   expect(iconCircleFinder, findsOneWidget);
  //  expect(iconSquareFinder, findsOneWidget);
  //  expect(counterTextFinder, findsOneWidget);
  //  await tester.tap(iconButtonFinder);
  //  await tester.pump();

  //  expect(find.text('1'), findsOneWidget);
  });
}