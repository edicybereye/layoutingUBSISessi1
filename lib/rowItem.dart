import 'package:flutter/material.dart';

class RowItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const RowItem({Key key, this.icon, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Text(
          "$title",
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
