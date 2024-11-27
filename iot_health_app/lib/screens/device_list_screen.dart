import 'package:flutter/material.dart';
import 'package:iot_health_app/screens/data_visual_screen.dart';

class DeviceListScreen extends StatelessWidget {
  final List<Map<String, String>> devices = [
    {'name': 'Heart Rate Monitor', 'type': 'Bluetooth'},
    {'name': 'Temperature Sensor', 'type': 'Wi-Fi'},
    {'name': 'Blood Pressure Monitor', 'type': 'Bluetooth'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Device'),
        backgroundColor: Color(0xFF4CAF50),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: devices.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.symmetric(vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text(devices[index]['name']!),
                subtitle: Text('Connection Type: ${devices[index]['type']}'),
                trailing: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DataVisualizationScreen(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color(0xFF4CAF50)),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                  ),
                  child: Text('Connect', style: TextStyle(color: Colors.white)),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
