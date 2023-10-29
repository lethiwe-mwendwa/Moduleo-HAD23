import 'package:flutter/material.dart';

class CalendarInfoWidget extends StatelessWidget {
  final bool isVisible;

  CalendarInfoWidget({required this.isVisible});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: isVisible ? 50 : 0,
      color: Colors.blue,
      child: Center(
        child: Text(
          'Calendar Information',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
