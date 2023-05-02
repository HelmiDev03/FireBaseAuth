import 'package:flutter/material.dart';
import 'package:loginsignup/models/doctor_model.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
      ),
      body: ListView.builder(
        itemCount: nearbyDoctors.length,
        itemBuilder: (context, index) {
          DoctorModel doctor = nearbyDoctors[index];
          return DoctorChatWidget(doctor: doctor);
        },
      ),
    );
  }
}

class DoctorChatWidget extends StatelessWidget {
  final DoctorModel doctor;

  const DoctorChatWidget({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(doctor.profile),
      ),
      title: Text(doctor.name),
      subtitle: Text("Hello, I'm ${doctor.name}"),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Yesterday'),
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text(
                '1',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
      onTap: () {
        // TODO: Open chat screen for selected doctor
      },
    );
  }
}





