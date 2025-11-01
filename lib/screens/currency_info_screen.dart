import 'package:flutter/material.dart';

class CurrencyInfoScreen extends StatelessWidget {
  final String currency;

  const CurrencyInfoScreen({super.key, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text("Информация о $currency")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Подробная информация о валюте $currency",
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Назад"),
            ),
          ],
        ),
      ),
    );
  }
}
