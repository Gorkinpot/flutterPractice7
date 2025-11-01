import 'package:flutter/material.dart';
import 'converter_screen.dart';
import 'rates_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Настройки")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const CurrencyConverterScreen()),
                );
              },
              child: const Text("Перейти к конвертеру"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const RatesScreen()),
                );
              },
              child: const Text("Перейти к курсам валют"),
            ),
          ],
        ),
      ),
    );
  }
}
