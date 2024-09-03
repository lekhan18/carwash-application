
import 'package:carwash_project/homepage.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(CarWashApp());
}

class CarWashApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Wash Booking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BookingPage(),
    );
  }
}


class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = '';
  String _phone = '';
  String _carName = '';
  String _carNumber = '';
  String _carModel = '';
  String _selectedService = 'Exterior Wash';
  DateTime _selectedDate = DateTime.now();

  static List<Map<String, String>> _bookings = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Wash Booking'),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone'),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
                onSaved: (value) {
                  _phone = value!;
                },
              ),
              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(labelText: 'Car Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your car name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _carName = value!;
                },
              ),
              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(labelText: 'Car Number'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your car number';
                  }
                  return null;
                },
                onSaved: (value) {
                  _carNumber = value!;
                },
              ),
              SizedBox(height: 15,),
              TextFormField(
                decoration: InputDecoration(labelText: 'Car Model'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your car model';
                  }
                  return null;
                },
                onSaved: (value) {
                  _carModel = value!;
                },
              ),
              SizedBox(height: 15,),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Service Type'),
                value: _selectedService,
                items: [
                  DropdownMenuItem(
                    child: Text('Exterior Wash'),
                    value: 'Exterior Wash',
                  ),
                  DropdownMenuItem(
                    child: Text('Interior Cleaning'),
                    value: 'Interior Cleaning',
                  ),
                  DropdownMenuItem(
                    child: Text('Full Service'),
                    value: 'Full Service',
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedService = value!;
                  });
                },
              ),
              SizedBox(height: 10,),
              ListTile(
                title: Text('Preferred Date: ${_selectedDate.toLocal()}'.split(' ')[0]),
                trailing: Icon(Icons.calendar_today),
                onTap: _pickDate,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: _submit,
                child: Text('Book Now', style: TextStyle(color: Colors.white, fontSize: 20),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  minimumSize: Size(400, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      _bookings.add({
        'name': _name,
        'phone': _phone,
        'carName': _carName,
        'carNumber': _carNumber,
        'carModel': _carModel,
        'service': _selectedService,
        'date': _selectedDate.toLocal().toString().split(' ')[0]
      });

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>BookingPage()
        ),
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Booking Confirmed')),
      );
    }
  }
}
