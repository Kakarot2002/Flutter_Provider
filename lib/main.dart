import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerr/provider/example_one_provider.dart';
import 'package:providerr/screen/exone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => exampleOneProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
          useMaterial3: true,
        ),
        home: const exone(),
      ),
    );
  }
}
