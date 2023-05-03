import 'package:flutter/material.dart';
import 'appointementconfirmation.dart' ;

class AppointmentPage extends StatefulWidget {
  final String doctorName;

  AppointmentPage({required this.doctorName});

  @override
  _AppointmentPageState createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Appointment'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              'Select a date and time to book an appointment with Dr ${widget.doctorName}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Date',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () => _selectDate(context),
                  child: Text(
                    '${_dateTime.year}-${_dateTime.month}-${_dateTime.day}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Time',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () => _selectTime(context),
                  child: Text(
                    '${_getTimeString()}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppointmentConfirmationPage(
                      doctorName: widget.doctorName,
                      date: '${_dateTime.year}-${_dateTime.month}-${_dateTime.day}',
                      time: _getTimeString(),
                    ),
                  ),
                );
                // Handle appointment booking logic
              },
              child: Text(
                'Book Appointment',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _dateTime,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 30)),
    );
    if (picked != null && picked != _dateTime) {
      setState(() {
        _dateTime = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        _dateTime = DateTime(_dateTime.year, _dateTime.month, _dateTime.day, picked.hour, picked.minute);
      });
    }
  }

  String _getTimeString() {
    final hour = _dateTime.hour.toString().padLeft(2, '0');
    final minute = _dateTime.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }
}
