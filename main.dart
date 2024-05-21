import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'building_roof_selection.dart';
import 'register_screen.dart';
import 'splash_screen.dart';
import 'login_screen.dart';
import 'user_screen.dart';
import 'electricity_cost_screen.dart'; // Yeni ekranı buraya ekleyin

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GüneşPlan Pro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginScreen(),
        '/location': (context) => LocationScreen(),
        '/building': (context) => BuildingRoofSelectionScreen(),
        '/register': (context) => RegisterScreen(),
        '/user': (context) => UserScreen(),
        '/electricity_cost': (context) => ElectricityCostScreen(), // Yeni ekranı buraya ekleyin
      },
    );
  }
}
