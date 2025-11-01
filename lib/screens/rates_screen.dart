import 'package:flutter/material.dart';
import 'currency_info_screen.dart';

class RatesScreen extends StatelessWidget {
  const RatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currencies = ["USD", "EUR", "RUB", "KZT"];

    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text("Курсы валют")
      ),
      body: ListView.builder(
        itemCount: currencies.length,
        itemBuilder: (context, index) {
          final currency = currencies[index];
          return ListTile(
            title: Text(currency),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CurrencyInfoScreen(currency: currency),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
