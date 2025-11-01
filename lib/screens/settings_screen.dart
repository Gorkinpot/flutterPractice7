import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Настройки (GoRouter)")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.pushReplacement('/converter'),
              child: const Text("Конвертер (горизонтальный переход)"),
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
