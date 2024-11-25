import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 64,
            child: DropdownButton(
              iconEnabledColor: Colors.amber,
              elevation: 0,
              isExpanded: true,
              underline: Container(
                height: 1,
                color: Colors.amber,
              ),
              items: const [
                DropdownMenuItem(
                  value: 'USD',
                  child: Text('USD'),
                ),
                DropdownMenuItem(
                  value: 'EUR',
                  child: Text('EUR'),
                ),
                DropdownMenuItem(
                  value: 'JPY',
                  child: Text('JPY'),
                ),
              ],
              onChanged: (value) {
                print(value);
              },
              hint: const Text('From'),
            ),
          ),
        ),
        const SizedBox(width: 20),
        const Expanded(
          flex: 2,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
