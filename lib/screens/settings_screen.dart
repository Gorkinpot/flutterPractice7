import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Назад',
            onPressed: () => context.pop(),
          ),
          title: const Text("Настройки (GoRouter)")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.pushReplacementNamed(
                'info',
                pathParameters: {'currency': 'USD'},
              ),
              child: const Text("Подробная информация о валюте USD (горизонтальный переход)"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => context.pushReplacement('/rates'),
              child: const Text("Курсы валют (горизонтальный переход)"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => context.pushReplacement('/'),
              child: const Text("Главное меню (горизонтальный переход)"),
            ),
          ],
        ),
      ),
    );
  }
}
