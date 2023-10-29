import 'package:flutter/material.dart';

class GridItemWidget extends StatelessWidget {
  final int index;

  GridItemWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text(
          'Item $index',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
