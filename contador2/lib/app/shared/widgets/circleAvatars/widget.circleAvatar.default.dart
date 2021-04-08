import 'package:flutter/material.dart';

class WidgetCircleAvatarDefault extends StatelessWidget {
  final String value;
  final String label;
  final Color color;

  const WidgetCircleAvatarDefault({
    @required this.value,
    @required this.label,
    this.color = Colors.blue,
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      maxRadius: 30.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(label),
          Text(value),
        ],
      ),
    );
  }
}
