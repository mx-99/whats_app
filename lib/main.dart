import 'package:flutter/material.dart';
import 'package:whats_app/colors.dart';
import 'package:whats_app/whatsapp_home.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'whatsapp ui',
    theme: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: backgroundColor,
    ),
    // home: const MyApp(),
    home: const WhatsApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold();
}
