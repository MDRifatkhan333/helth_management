import 'package:flutter/material.dart';
import 'package:helth_management/screens/LoginPage.dart';
import 'package:helth_management/widgets/DashboardTiles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          primaryColor: Colors.deepPurple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Poppins'),
      home: DashboardTiles(
        username: 'John Doe',
        userId: '1',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
