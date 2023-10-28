import 'package:flutter/material.dart';
class ButtonComponent extends StatelessWidget {
  var title;
  Color? color;
  double? size;
  VoidCallback? onPressed;
  ButtonComponent({super.key,
    this.title,
    this.color,
    this.size,
  this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: size,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        child: Center(child: Text(title)),
      ),
    );
  }
}