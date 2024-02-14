import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerr/provider/example_one_provider.dart';

class exone extends StatefulWidget {
  const exone({super.key});

  @override
  State<exone> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<exone> {
  double value = 1.0;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<exampleOneProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Slider(
                min: 0,
                max: 1,
                value: provider.value,
                onChanged: (val) {
                  print(value);
                  provider.setValue(val);
                }),
            Row(
              children: [
                Expanded(
                  child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.green.withOpacity(provider.value)),
                      child: const Center(child: Text("Container 1"))),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(provider.value)),
                    child: const Center(child: Text("Container 1")),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
