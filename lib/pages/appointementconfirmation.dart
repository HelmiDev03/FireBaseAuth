import 'package:flutter/material.dart';

class AppointmentConfirmationPage extends StatelessWidget {
  final String doctorName;
  final String date;
  final String time;

  AppointmentConfirmationPage({required this.doctorName, required this.date, required this.time});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment Confirmation'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              'Appointment Confirmed',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'You have booked an appointment with Dr $doctorName on $date at $time',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate back to previous screen
                Navigator.pop(context);
              },
              child: Text(
                'Back to Book Appointment',
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
}
