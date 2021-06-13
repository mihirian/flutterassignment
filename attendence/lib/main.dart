import 'package:attendence/screens/applyleavescreen.dart';
import 'package:attendence/screens/leaveandattendencescreen.dart';
import 'package:attendence/widgets/apply_leave.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.blue[700],
        ),
        primarySwatch: Colors.lightBlue,
        accentColor: Colors.blue.shade100,
        canvasColor: Color.fromRGBO(248, 248, 248, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => LandAScreen(),
        ApplyLeaveScreen.routeName: (ctx) => ApplyLeaveScreen(),
      },
    );
  }
}
