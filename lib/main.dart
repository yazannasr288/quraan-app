import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'mytheam.dart';
import 'souradetail.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'القرآن الكريم',
      theme: Mytheam.lightmode,
      initialRoute: Homescreen.routname,
      routes: {
        Homescreen.routname: (_) => const Homescreen(),
        Souradetail.routname: (_) => const Souradetail(),
      },
    );
  }
}
