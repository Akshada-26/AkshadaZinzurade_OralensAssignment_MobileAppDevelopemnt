import 'package:flutter/material.dart';
import 'screens/device_list_screen.dart'; // Import DeviceListScreen
import 'screens/data_visual_screen.dart'; // Import DataVisualizationScreen
import 'screens/home_screen.dart'; // Import HomeScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IoT Health App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(), // Use the HomeScreen here
        '/deviceList': (context) => DeviceListScreen(),
        '/dataVisualization': (context) => DataVisualizationScreen(),
      },
    );
  }
}
