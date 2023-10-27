import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final double width;
  final double height;
  final double titleFontSize;
  final double textFieldFontSize;
  final double iconSize;
  final IconData icon;
  final String title;
  final TextEditingController controller;

  const CustomTextField({super.key,
    required this.width,
    required this.height,
    required this.titleFontSize,
    required this.textFieldFontSize,
    required this.iconSize,
    required this.icon,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: titleFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Icon(
                icon,
                size: iconSize,
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: TextField(
                  controller: controller,
                  style: TextStyle(
                    fontSize: textFieldFontSize,
                  ),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}