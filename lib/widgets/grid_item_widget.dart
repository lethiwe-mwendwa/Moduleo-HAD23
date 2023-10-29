import 'package:flutter/material.dart';

class GridItemWidget extends StatelessWidget {
  final int index;

  GridItemWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Text(
          'Item $index',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
