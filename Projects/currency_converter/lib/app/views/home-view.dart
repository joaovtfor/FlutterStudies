import 'package:currency_converter/app/components/currencyBox.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 100, bottom: 20, left: 20, right: 20),
          child: Column(
            children: [
              const Text(
                'Currency Converter',
                style: TextStyle(fontSize: 30),
              ),
              Image.asset('assets/currencyExchange.png'),
              const CurrencyBox(),
              const CurrencyBox(),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  print('Convert');
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.amber[800]),
                ),
                child: const Text(
                  'Convert',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
