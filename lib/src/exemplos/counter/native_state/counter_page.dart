import 'package:flutter/material.dart';

class ContadorPageNative extends StatefulWidget {
  const ContadorPageNative({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ContadorPageNative> createState() => _ContadorPageNativeState();
}

class _ContadorPageNativeState extends State<ContadorPageNative> {
  int counter = 0;

  void increment() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text('$counter', style: Theme.of(context).textTheme.headline6),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
