import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BottomAppBar(
        color: Theme.of(context).colorScheme.primary,
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                  icon: const Icon(Icons.calendar_month),
                  onPressed: () {/* Handle home button tap */}),
              IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () {/* Handle search button tap */}),
              IconButton(
                  icon: const Icon(Icons.view_agenda),
                  onPressed: () {/* Handle profile button tap */}),
            ],
          ),
        ),
      );
}
