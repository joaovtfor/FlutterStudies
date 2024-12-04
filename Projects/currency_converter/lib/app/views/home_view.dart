import 'package:currency_converter/app/components/currency_box.dart';
import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Todo {
  final String name;
  final Map real;
  final String date;
  final int timeLastUpdated;

  Todo(
      {required this.name,
      required this.real,
      required this.date,
      required this.timeLastUpdated});

  factory Todo.fromJson(Map dataValues) {
    return Todo(
        name: dataValues['base'],
        real: dataValues['rates'],
        date: dataValues['date'],
        timeLastUpdated: dataValues['time_last_updated']);
  }
}

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

  Future<Todo> fetch() async {
    var url = Uri.parse('https://api.exchangerate-api.com/v4/latest/BRL');
    final response = await http
        .get(url, headers: {'Content-Type': 'application/json; charset=UTF-8'});

    final data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      final dataValues = Todo.fromJson(data);
      // print(data);
      print(dataValues.real['USD']);

      return dataValues;
    } else {
      throw Exception('Failed to load data');
    }
  }

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
                  fetch();
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
              const Text('Actual currencies:'),
              ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(homeController.currencies[index].name),
                    subtitle:
                        Text(homeController.currencies[index].real.toString()),
                  );
                },
                itemCount: homeController.currencies.length,
                shrinkWrap: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
