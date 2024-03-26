import 'package:flutter/material.dart';

class LabTestAppoinment extends StatefulWidget {
  const LabTestAppoinment({super.key});

  @override
  State<LabTestAppoinment> createState() => _LabTestAppoinmentState();
}

class _LabTestAppoinmentState extends State<LabTestAppoinment> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _sampleIdController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital Health Appointment'),
      ),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _nameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
              ),
              TextFormField(
                controller: _sampleIdController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter  Sample ID';
                  }
                  // You can add more sophisticated email validation if needed
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Sample ID',
                ),
              ),
              TextFormField(
                controller: _phoneController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  // You can add more sophisticated phone number validation if needed
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Phone',
                ),
              ),
              TextFormField(
                controller: _dateController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please select appointment date';
                  }
                  // You can add more sophisticated date validation if needed
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Appointment Date',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () {
                      // Implement date picker
                    },
                  ),
                ),
              ),
              TextFormField(
                controller: _dateController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please select appointment date';
                  }
                  // You can add more sophisticated date validation if needed
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Report Delevery Date',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () {
                      // Implement date picker
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Process form data
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
