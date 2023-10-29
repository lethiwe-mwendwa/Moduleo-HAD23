import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    String formattedDate = DateFormat('d MMMM').format(currentDate);

    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        formattedDate,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
