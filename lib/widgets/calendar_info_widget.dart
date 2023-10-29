import 'package:flutter/material.dart';

class CalendarInfoWidget extends StatelessWidget {
  const CalendarInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const SizedBox(
        height: 50,
        child: Center(
          child: Text(
            'Calendar Information',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
          ),
        ),
      );
}
