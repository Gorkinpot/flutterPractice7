import 'package:flutter/material.dart';
import 'converter_screen.dart';
import 'history_screen.dart';
import 'rates_screen.dart';
import 'settings_screen.dart';

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
