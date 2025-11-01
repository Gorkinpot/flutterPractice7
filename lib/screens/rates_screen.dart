import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RatesScreen extends StatelessWidget {
  const RatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currencies = ["USD", "EUR", "RUB", "KZT"];

    return Scaffold(
      appBar: AppBar(title: const Text("Курсы валют")),
      body: ListView.builder(
        itemCount: currencies.length,
        itemBuilder: (context, index) {
          final currency = currencies[index];
          return ListTile(
            title: Text(currency),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () => context.push('/info/$currency'),
          );
        },
      ),
    );
  }
}
