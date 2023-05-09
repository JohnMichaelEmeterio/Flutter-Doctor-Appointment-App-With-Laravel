import 'package:doctor_appointment_app/utils/config.dart';
import 'package:flutter/material.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({Key? key}) : super(key: key);

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

enum FilterStatus { upcoming, complete, cancel }

class _AppointmentPageState extends State<AppointmentPage> {
  FilterStatus status = FilterStatus.upcoming;
  Alignment _alignment = Alignment.centerLeft;
  List<dynamic> schedules = [
    {
      "doctor_name": "Richard Tan",
      "doctor_profile": "assets/doctor_2.jpg",
      "category": "Dental",
      "status": FilterStatus.upcoming,
    },
    {
      "doctor_name": "Max Lim",
      "doctor_profile": "assets/doctor_3.jpg",
      "category": "Cardiology",
      "status": FilterStatus.complete,
    },
    {
      "doctor_name": "Jane Wong",
      "doctor_profile": "assets/doctor_4.jpg",
      "category": "Respiratory",
      "status": FilterStatus.complete,
    },
    {
      "doctor_name": "Jenny Song",
      "doctor_profile": "assets/doctor_5.jpg",
      "category": "General",
      "status": FilterStatus.cancel,
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<dynamic> filteredShedules = schedules.where((var schedule) {
      // switch (schedule['status']) {
      //   case 'upcoming':
      //     schedule['status'] = FilterStatus.upcoming;
      //     break;
      //   case 'complete':
      //     schedule['status'] = FilterStatus.complete;
      //     break;
      //   case 'cancel':
      //     schedule['status'] = FilterStatus.cancel;
      //     break;
      //  }
      return schedule['status'] == status;
    }).toList();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const <Widget>[
            Text(
              'Appointment Schedule',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Config.spaceSmall,
          ],
        ),
      ),
    );
  }
}
