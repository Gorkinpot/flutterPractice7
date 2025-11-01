import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CurrencyInfoScreen extends StatelessWidget {
  final String currency;

  const CurrencyInfoScreen({super.key, required this.currency});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Информация о $currency"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: Center(
        child: Text(
          "Подробная информация о валюте $currency",
          style: const TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
