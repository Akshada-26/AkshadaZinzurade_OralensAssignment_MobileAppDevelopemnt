import 'dart:async';
import 'package:flutter/material.dart';

class DataVisualizationScreen extends StatefulWidget {
  @override
  _DataVisualizationScreenState createState() => _DataVisualizationScreenState();
}

class _DataVisualizationScreenState extends State<DataVisualizationScreen> {
  String _sensorData = 'Waiting for data...';
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    // Start periodic data fetching (every 5 seconds)
    _timer = Timer.periodic(Duration(seconds: 5), _fetchData);
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is disposed
    _timer.cancel();
    super.dispose();
  }

  void _fetchData(Timer timer) {
    if (!mounted) return; // Ensure the widget is still in the widget tree
    // Simulate fetching new data
    setState(() {
      _sensorData = 'New data received: ${DateTime.now().toString()}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Real-Time Data'),
        backgroundColor: Color(0xFF4CAF50),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Sensor Data:',
              style: TextStyle(fontSize: 18, color: Colors.blueGrey[700]),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      _sensorData,
                      style: TextStyle(fontSize: 16, color: Colors.blueGrey[900]),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Action when the button is pressed (e.g., go to another screen)
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xFF4CAF50)),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15, horizontal: 30)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                      ),
                      child: Text(
                        'Refresh Data',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
