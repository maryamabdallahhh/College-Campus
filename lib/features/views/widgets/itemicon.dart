import 'package:flutter/material.dart';

class ItemIcon extends StatelessWidget {
  const ItemIcon({
    super.key,
    required this.data,
    required this.icon,
    required this.onPressed,
  });
  final String data;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Icon(icon, color: Colors.black),
        ),
        Text(data, style: TextStyle(color: Colors.black)),
      ],
    );
  }
}
