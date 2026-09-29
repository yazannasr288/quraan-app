import 'package:flutter/material.dart';

class Souradata extends StatelessWidget {
  final String content;
  final int index;

  const Souradata({
    super.key,
    required this.content,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: Text(
          content,
          textDirection: TextDirection.rtl,
          textAlign: TextAlign.right,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            height: 1.8,
            letterSpacing: 0,
          ),
        ),
      ),
    );
  }
}
