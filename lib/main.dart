import 'package:flutter/material.dart';

import 'expense.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'proxima'),
      initialRoute: "/expense",
      routes: {
        "/expense": (context) => Expense(
              text1: '',
              text2: '',
              text3: '',
              text4: '',
              text5: '',
              text6: '',
            ),
        "/expense1": (context) => NotesPage(),
      },
    );
  }
}
