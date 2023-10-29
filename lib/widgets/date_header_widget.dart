import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateHeaderWidget extends StatelessWidget {
  const DateHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedDate = DateFormat('d MMMM').format(DateTime.now());

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        formattedDate,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
