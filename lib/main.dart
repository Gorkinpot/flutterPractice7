import 'package:flutter/material.dart';
import 'package:work/screens/converter_screen.dart';
import 'package:work/screens/history_screen.dart';
import 'package:work/screens/rates_screen.dart';
import 'package:work/screens/settings_screen.dart';

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

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Главное меню")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CurrencyConverterScreen()),
              );
            },
            child: const Text("Конвертер валют"),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const RatesScreen()),
              );
            },
            child: const Text("Курсы валют"),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => HistoryScreen(
                    history: const [],
                    onDelete: (index) {},
                  ),
                ),
              );
            },
            child: const Text("История конвертаций"),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const SettingsScreen()),
              );
            },
            child: const Text("Настройки"),
          ),
        ],
      ),
    );
  }
}
