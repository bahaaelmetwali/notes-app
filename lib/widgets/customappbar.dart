import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text('Notes', style: TextStyle(fontSize: 20)),
          Spacer(),
          Container(
            height: 32,
            width: 32,
            child: Icon(Icons.search),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white.withAlpha((0.08 * 255).toInt()),
            ),
          ),
        ],
      ),
    );
  }
}
