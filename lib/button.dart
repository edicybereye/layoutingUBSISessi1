import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final String title;
  final Color color;
  const ButtonCustom({
    this.title = "Submit",
    this.color = Colors.red,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: color,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
