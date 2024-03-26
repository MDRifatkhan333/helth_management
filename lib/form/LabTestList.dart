import 'package:flutter/material.dart';
import 'package:helth_management/form/appoinment.dart';
import 'package:helth_management/form/labTestAoinment.dart';

class HealthLabTestList extends StatefulWidget {
  @override
  _HealthLabTestListState createState() => _HealthLabTestListState();
}

class _HealthLabTestListState extends State<HealthLabTestList> {
  List<Map<String, dynamic>> _labTests = [
    {'name': 'Blood Test', 'price': 50, 'rating': 4.5},
    {'name': 'Urine Test', 'price': 40, 'rating': 4.2},
    {'name': 'X-ray', 'price': 100, 'rating': 4.8},
    {'name': 'MRI Scan', 'price': 300, 'rating': 4.9},
    {'name': 'ECG', 'price': 80, 'rating': 4.6},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Lab Tests'),
      ),
      body: ListView.builder(
        itemCount: _labTests.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_labTests[index]['name']),
            subtitle: Text('Price: ${_labTests[index]['price']}\Taka'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                Text(_labTests[index]['rating'].toString()),
              ],
            ),
            onTap: () {
              // Action when a lab test is tapped
              // For example, navigate to another screen to display more details
              // or perform some other action.
              _navigateToLabTestDetails(_labTests[index]);
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => LabTestAppoinment()));
            },
          );
        },
      ),
    );
  }

  void _navigateToLabTestDetails(Map<String, dynamic> labTest) {
    // Implement navigation to lab test details screen here
    // You can use Navigator.push to navigate to another screen
    // and pass the lab test details as arguments.
  }
}
