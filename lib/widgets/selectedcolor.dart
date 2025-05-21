import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class selectedColor extends StatelessWidget {
  const selectedColor({
    super.key,
    required this.isSelected,
    required this.color,
  });

  final bool isSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    if (isSelected == true) {
      return CircleAvatar(
        backgroundColor: Colors.red,
        radius: 40,
        child: CircleAvatar(backgroundColor: color, radius: 36),
      );
    } else {
      return CircleAvatar(backgroundColor: color, radius: 40);
    }
  }
}

