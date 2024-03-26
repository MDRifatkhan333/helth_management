import 'package:flutter/material.dart';

class Appoinmentform extends StatefulWidget {
  const Appoinmentform({super.key});
  @override
  State<Appoinmentform> createState() => _AppoinmentformState();
}

class _AppoinmentformState extends State<Appoinmentform> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hospital Health Appointment'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
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
                controller: _emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  // You can add more sophisticated email validation if needed
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Email',
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
              Column(
                children: [
                  DropdownWidget(),
                ],
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

class DropdownWidget extends StatefulWidget {
  @override
  _DropdownWidgetState createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  late String _selectedItem;

  @override
  void initState() {
    super.initState();
    // Initialize _selectedItem with the first item in the list
    _selectedItem = 'Select an Doctor Name';
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _selectedItem,
      onChanged: (String? newValue) {
        if (newValue != null) {
          setState(() {
            _selectedItem = newValue;
          });
        }
      },
      items: <String>[
        'Select an Doctor Name',
        'Dr. ABC',
        'Dr. XYZ',
        'Dr. PQR',
        'Dr. LMN',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
