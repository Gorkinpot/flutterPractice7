import 'package:flutter/material.dart';
import 'screens/main_menu_screen.dart';

void main() {
  runApp(const CurrencyConverterApp());
}

class CurrencyConverterApp extends StatelessWidget {
  const CurrencyConverterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Конвертер валют',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MainMenuScreen(),
    );
  }
}
