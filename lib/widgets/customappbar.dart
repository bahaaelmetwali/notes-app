import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key, required this.icon, required this.title, this.onTap});
  final String title;
  final IconData icon;
   final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(title, style: TextStyle(fontSize: 24)),
          Spacer(),
          Container(
            height: 38,
            width: 38,
            child: GestureDetector(onTap: onTap, child: Icon(icon)),
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
