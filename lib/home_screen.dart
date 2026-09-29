import 'package:flutter/material.dart';

import 'quraantap.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  static const String routname = 'home';

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/img/bachgound.jpg',
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) => const ColoredBox(
            color: Color(0xFFF5F5F5),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text('القرآن الكريم'),
          ),
          body: const Quraantap(),
        ),
      ],
    );
  }
}
