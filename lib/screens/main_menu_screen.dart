import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            onPressed: () => context.push('/converter'),
            child: const Text("Конвертер валют"),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () => context.push('/rates'),
            child: const Text("Курсы валют"),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () => context.push('/history', extra: []),
            child: const Text("История конвертаций"),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () => context.push('/settings'),
            child: const Text("Настройки"),
          ),
        ],
      ),
    );
  }
}
