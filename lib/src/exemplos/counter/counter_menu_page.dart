import 'package:flutter/material.dart';

import 'change_notifier/counter_page.dart';
import 'native_state/counter_page.dart';
import 'value_notifier_simplified/counter_page.dart';

class CounterMenuPage extends StatelessWidget {
  const CounterMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu de navegação do counter"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContadorPageNativeState(
                      title: 'Native State',
                    ),
                  ),
                );
              },
              child: const Text("Native State"),
              style: style,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContadorPageChangeNotifier(
                      title: 'Change Notifier',
                    ),
                  ),
                );
              },
              child: const Text("Change Notifier"),
              style: style,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const ContadorPageValueNotifierSimplified(
                      title: 'Value Notifier',
                    ),
                  ),
                );
              },
              child: const Text("Value Notifier"),
              style: style,
            ),
          ],
        ),
      ),
    );
  }
}