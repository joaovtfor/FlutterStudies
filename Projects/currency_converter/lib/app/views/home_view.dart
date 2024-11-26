import 'package:currency_converter/app/components/currency_box.dart';
import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();
  late HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
              CurrencyBox(
                key: UniqueKey(),
                selectedItem: homeController.toCurrency,
                controller: toText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.toCurrency = model!;
                  });
                },
              ),
              CurrencyBox(
                key: UniqueKey(),
                selectedItem: homeController.fromCurrency,
                controller: fromText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.fromCurrency = model!;
                  });
                },
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  homeController.convert();
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
