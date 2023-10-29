import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Theme.of(context).colorScheme.primary,
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 60.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Handle home button tap
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Handle search button tap
              },
            ),
            SizedBox(width: 40.0),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                // Handle profile button tap
              },
            ),
          ],
        ),
      ),
    );
  }
}
